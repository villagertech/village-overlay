# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit bash-completion-r1 edo go-module readme.gentoo-r1 systemd

IUSE="bash fish zsh softhsm"

eDESCRIPTION="A zero trust swiss army knife for working with X509"
HOMEPAGE="https://github.com/smallstep/cli"
SRC_URI="https://github.com/smallstep/step-kms-plugin/archive/v${PV}.tar.gz -> ${P}.tar.gz
	https://github.com/smallstep/step-kms-plugin/raw/refs/heads/master/go.sum
	https://github.com/villagertech/village-overlay/raw/refs/heads/master/distfiles/step-kms-plugin-${PV}-vendor.tar.xz"

GO_MODULE_URI="github.com/smallstep/step-kms-plugin"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
RESTRICT="test"
PROPERTIES="test_network"

BDEPEND=">=dev-lang/go-1.25.6
	 >=dev-go/golangci-lint-1.61.0
	 >=dev-go/goreleaser-2.3.2
	 softhsm? ( >=dev-libs/softhsm-2.6.1-r3 )
	 >=app-crypt/step-cli-0.29.0
	 >=sys-apps/pcsc-lite-2.4.0
"

S="${WORKDIR}/kms-plugin-${PV}"

DOCS=( README.md )

src_unpack() {
	unpack ${A}

	DATE="$(date -u '+%Y-%m-%d-%H%M UTC')"
	export LDFLAGS="-w -X \"main.Version=${PV}\" -X \"main.BuildTime=${DATE}\""
	export MAKEFLAGS="-ldflags ${LDFLAGS}"

	cd ${WORKDIR}
	ln -s "step-kms-plugin-${PV}" "kms-plugin-${PV}"
}

src_compile() {
	ego build -v -o bin/${PN} "${GO_MODULE_URI}"

	local completion
	for completion in bash fish zsh ; do
		if use $completion; then
			edo bin/step-kms-plugin completion ${completion}_completion > step-kms-plugin.${completion}
		fi
	done
}

src_test() {
	ego test -work ./...
}

src_install() {
	dodoc README.md LICENSE
	exeinto $(step-cli path --base)/plugins/
	doexe bin/step-kms-plugin

	use bash && newbashcomp autocomplete/bash_autocomplete step-kms-plugin
	use fish && insinto /usr/share/fish/completion
	use fish && newins step-kms-plugin.fish __step-kms-plugin
	use zsh && insinto /usr/share/zsh/site-functions
	use zsh && newins step-kms-plugins.zsh __step-kms-plugin
}
