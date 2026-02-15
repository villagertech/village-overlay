# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit bash-completion-r1 edo go-module readme.gentoo-r1 systemd

IUSE="+pie bash fish zsh softhsm"

DESCRIPTION="A zero trust swiss army knife for working with X509"
HOMEPAGE="https://github.com/smallstep/cli"
SRC_URI="https://github.com/smallstep/cli/archive/v${PV}.tar.gz -> ${P}.tar.gz
	https://github.com/smallstep/cli/raw/refs/heads/master/go.sum
	https://github.com/villagertech/village-overlay/raw/refs/heads/master/distfiles/step-cli-0.29.0-vendor.tar.xz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
RESTRICT="test"
PROPERTIES="test_network"

# Forked to independent file, and removed to clear circular dependency.
#RDEPEND="kms? ( >=app-crypt/step-kms-plugin-0.12.1 )"

BDEPEND=">=dev-lang/go-1.25.6
	 >=dev-go/golangci-lint-1.61.0
	 >=dev-go/goreleaser-2.3.2
	 softhsm? ( >=dev-libs/softhsm-2.6.1-r3 )
"

S="${WORKDIR}/cli-${PV}"

DOCS=( {CHANGELOG,README}.md )

DOC_CONTENTS="Run 'env-update && source /etc/profile' to\\n
export STEPPATH envvar, after that you can init CA via\\n
'step-cli ca init' into /etc/step directory.\\n\\n
For additional features you might like:\\n
- app-crypt/step-kms-plugin: KMS management functions\\n\\n"

src_unpack() {
	echo "${DISTDIR}"
	unpack ${A}
	DATE="$(date -u '+%Y-%m-%d-%H%M UTC')"
	export LDFLAGS="-w -X \"main.Version=${PV}\" -X \"main.BuildTime=${DATE}\""
	export MAKEFLAGS="-ldflags ${LDFLAGS}"
	export GO_EXTRA_BUILD_FLAGS="-v -buildmode=$(usex pie pie default) -trimpath -o ${PN}"
}

src_compile() {
	ego build -ldflags "${LDFLAGS}" ${GO_EXTRA_BUILD_FLAGS} github.com/smallstep/cli/cmd/step

	local completion
	for completion in bash fish zsh ; do
		if use $completion; then
			edo ./step-cli completion ${completion} > step-cli.${completion}
			edo sed -i "s/step/step-cli/g" step-cli.${completion}
		fi;
	done
}

src_test() {
	ego test -work ./...
}

src_install() {
	einstalldocs
	readme.gentoo_create_doc
	dobin step-cli
	systemd_dounit systemd/{cert-renewer@,ssh-cert-renewer}.service \
		systemd/cert-renewer.target systemd/{cert-renewer@,ssh-cert-renewer}.timer
	newbashcomp autocomplete/bash_autocomplete step-cli

	use fish && insinto /usr/share/fish/completion
	use fish && newins step-cli.fish step-cli
	use zsh && insinto /usr/share/zsh/site-functions
	use zsh && newins step-cli.zsh _step-cli
	doenvd "${FILESDIR}"/99step-cli
}

pkg_postinst() {
	readme.gentoo_print_elog
}
