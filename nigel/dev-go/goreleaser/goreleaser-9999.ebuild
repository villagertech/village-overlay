# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit go-module

DESCRIPTION="Deliver Go binaries as fast and easily as possible"
HOMEPAGE="https://github.com/goreleaser/goreleaser https://goreleaser.com/"
LICENSE="MIT BSD BSD-2 Apache-2.0 MPL-2.0"
SLOT="0"

PATCHES=(
	"${FILESDIR}/${PN}-manpage-no-compress.patch"
)

if [[ ${PV} == 9999 ]]; then
	SLOT="9999"
	inherit git-r3
	EGIT_REPO_URI="https://github.com/goreleaser/${PN}.git"

	src_unpack() {
		git-r3_src_unpack
		go-module_live_vendor
		COMMIT=$(git-r3_peek_remote_ref)
	}
else
	# TODO: UPDATE EVERY BUMP
	COMMIT="6b65ea5ca18f9ee2de48f2ecc914a617741d6b14"
	# https://github.com/goreleaser/${PN}/releases/download/v2.3.2-pro/goreleaser-pro_Linux_x86_64.tar.gz
	if [ "${PN}" == "goreleaser-pro" ]; then
		SRCPV="${PV}-pro"
	else
		SRCPV="${PV}"
	fi
	[ "${ARCH}" == "amd64" ] && SRCARCH="x86_64"
	SRC_URI="https://github.com/goreleaser/${PN}/releases/download/v${SRCPV}/${PN}_Linux_${SRCARCH}.tar.gz -> ${P}.tar.gz"
	#SRC_URI+=" https://git.froth.zone/api/packages/packaging/generic/portage/deps/${P}-vendor.tar.xz"
	KEYWORDS="~amd64 ~arm64 ~x86"
fi

src_compile() {
	ego build -ldflags "-s -w -X main.version=${PV} -X main.date=$(date -I) -X main.commit=${COMMIT} -X main.builtBy=portage" .
	./scripts/manpages.sh
}

src_install() {
	dobin ./${PN}
	doman manpages/goreleaser.1
	einstalldocs
}
