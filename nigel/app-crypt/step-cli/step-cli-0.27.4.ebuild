# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit bash-completion-r1 edo go-module readme.gentoo-r1 systemd
EGO_SUM=(
	"github.com/Microsoft/go-winio v0.6.2"
	"github.com/Microsoft/go-winio v0.6.2/go.mod"
	"github.com/ThomasRooney/gexpect v0.0.0-20161231170123-5482f0350944"
	"github.com/ThomasRooney/gexpect v0.0.0-20161231170123-5482f0350944/go.mod"
	"github.com/fxamacker/cbor/v2 v2.7.0"
	"github.com/fxamacker/cbor/v2 v2.7.0/go.mod"
	"github.com/go-jose/go-jose/v3 v3.0.3"
	"github.com/go-jose/go-jose/v3 v3.0.3/go.mod"
	"github.com/google/go-cmp v0.6.0"
	"github.com/google/go-cmp v0.6.0/go.mod"
	"github.com/google/go-tpm v0.9.1"
	"github.com/google/go-tpm v0.9.1/go.mod"
	"github.com/google/uuid v1.6.0"
	"github.com/google/uuid v1.6.0/go.mod"
	"github.com/icrowley/fake v0.0.0-20221112152111-d7b7e2276db2"
	"github.com/icrowley/fake v0.0.0-20221112152111-d7b7e2276db2/go.mod"
	"github.com/manifoldco/promptui v0.9.0"
	"github.com/manifoldco/promptui v0.9.0/go.mod"
	"github.com/pkg/errors v0.9.1"
	"github.com/pkg/errors v0.9.1/go.mod"
	"github.com/pquerna/otp v1.4.0"
	"github.com/pquerna/otp v1.4.0/go.mod"
	"github.com/slackhq/nebula v1.9.4"
	"github.com/slackhq/nebula v1.9.4/go.mod"
	"github.com/smallstep/assert v0.0.0-20200723003110-82e2b9b3b262"
	"github.com/smallstep/assert v0.0.0-20200723003110-82e2b9b3b262/go.mod"
	"github.com/smallstep/certificates v0.27.4"
	"github.com/smallstep/certificates v0.27.4/go.mod"
	"github.com/smallstep/certinfo v1.12.2"
	"github.com/smallstep/certinfo v1.12.2/go.mod"
	"github.com/smallstep/cli-utils v0.10.0"
	"github.com/smallstep/cli-utils v0.10.0/go.mod"
	"github.com/smallstep/go-attestation v0.4.4-0.20240109183208-413678f90935"
	"github.com/smallstep/go-attestation v0.4.4-0.20240109183208-413678f90935/go.mod"
	"github.com/smallstep/truststore v0.13.0"
	"github.com/smallstep/truststore v0.13.0/go.mod"
	"github.com/smallstep/zcrypto v0.0.0-20221001003018-1ab2364d2a91"
	"github.com/smallstep/zcrypto v0.0.0-20221001003018-1ab2364d2a91/go.mod"
	"github.com/smallstep/zlint v0.0.0-20220930192201-67fb4aa21910"
	"github.com/smallstep/zlint v0.0.0-20220930192201-67fb4aa21910/go.mod"
	"github.com/stretchr/testify v1.9.0"
	"github.com/stretchr/testify v1.9.0/go.mod"
	"github.com/urfave/cli v1.22.15"
	"github.com/urfave/cli v1.22.15/go.mod"
	"go.mozilla.org/pkcs7 v0.9.0"
	"go.mozilla.org/pkcs7 v0.9.0/go.mod"
	"go.step.sm/crypto v0.53.0"
	"go.step.sm/crypto v0.53.0/go.mod"
	"go.step.sm/linkedca v0.22.1"
	"go.step.sm/linkedca v0.22.1/go.mod"
	"golang.org/x/crypto v0.28.0"
	"golang.org/x/crypto v0.28.0/go.mod"
	"golang.org/x/sys v0.26.0"
	"golang.org/x/sys v0.26.0/go.mod"
	"golang.org/x/term v0.25.0"
	"golang.org/x/term v0.25.0/go.mod"
	"google.golang.org/protobuf v1.34.2"
	"google.golang.org/protobuf v1.34.2/go.mod"
	"software.sslmate.com/src/go-pkcs12 v0.5.0"
	"software.sslmate.com/src/go-pkcs12 v0.5.0/go.mod"
	"cloud.google.com/go v0.115.1"
	"cloud.google.com/go v0.115.1/go.mod"
	"cloud.google.com/go/auth v0.9.4"
	"cloud.google.com/go/auth v0.9.4/go.mod"
	"cloud.google.com/go/auth/oauth2adapt v0.2.4"
	"cloud.google.com/go/auth/oauth2adapt v0.2.4/go.mod"
	"cloud.google.com/go/compute/metadata v0.5.1"
	"cloud.google.com/go/compute/metadata v0.5.1/go.mod"
	"cloud.google.com/go/iam v1.2.1"
	"cloud.google.com/go/iam v1.2.1/go.mod"
	"cloud.google.com/go/longrunning v0.6.1"
	"cloud.google.com/go/longrunning v0.6.1/go.mod"
	"cloud.google.com/go/security v1.18.0"
	"cloud.google.com/go/security v1.18.0/go.mod"
	"dario.cat/mergo v1.0.1"
	"dario.cat/mergo v1.0.1/go.mod"
	"filippo.io/edwards25519 v1.1.0"
	"filippo.io/edwards25519 v1.1.0/go.mod"
	"github.com/AndreasBriese/bbloom v0.0.0-20190825152654-46b345b51c96"
	"github.com/AndreasBriese/bbloom v0.0.0-20190825152654-46b345b51c96/go.mod"
	"github.com/Azure/azure-sdk-for-go/sdk/azcore v1.14.0"
	"github.com/Azure/azure-sdk-for-go/sdk/azcore v1.14.0/go.mod"
	"github.com/Azure/azure-sdk-for-go/sdk/azidentity v1.7.0"
	"github.com/Azure/azure-sdk-for-go/sdk/azidentity v1.7.0/go.mod"
	"github.com/Azure/azure-sdk-for-go/sdk/internal v1.10.0"
	"github.com/Azure/azure-sdk-for-go/sdk/internal v1.10.0/go.mod"
	"github.com/Azure/azure-sdk-for-go/sdk/keyvault/azkeys v0.10.0"
	"github.com/Azure/azure-sdk-for-go/sdk/keyvault/azkeys v0.10.0/go.mod"
	"github.com/Azure/azure-sdk-for-go/sdk/keyvault/internal v0.7.1"
	"github.com/Azure/azure-sdk-for-go/sdk/keyvault/internal v0.7.1/go.mod"
	"github.com/AzureAD/microsoft-authentication-library-for-go v1.2.2"
	"github.com/AzureAD/microsoft-authentication-library-for-go v1.2.2/go.mod"
	"github.com/Masterminds/goutils v1.1.1"
	"github.com/Masterminds/goutils v1.1.1/go.mod"
	"github.com/Masterminds/semver/v3 v3.3.0"
	"github.com/Masterminds/semver/v3 v3.3.0/go.mod"
	"github.com/Masterminds/sprig/v3 v3.3.0"
	"github.com/Masterminds/sprig/v3 v3.3.0/go.mod"
	"github.com/asaskevich/govalidator v0.0.0-20210307081110-f21760c49a8d"
	"github.com/asaskevich/govalidator v0.0.0-20210307081110-f21760c49a8d/go.mod"
	"github.com/beorn7/perks v1.0.1"
	"github.com/beorn7/perks v1.0.1/go.mod"
	"github.com/boombuler/barcode v1.0.1"
	"github.com/boombuler/barcode v1.0.1/go.mod"
	"github.com/cespare/xxhash v1.1.0"
	"github.com/cespare/xxhash v1.1.0/go.mod"
	"github.com/cespare/xxhash/v2 v2.3.0"
	"github.com/cespare/xxhash/v2 v2.3.0/go.mod"
	"github.com/chzyer/readline v1.5.1"
	"github.com/chzyer/readline v1.5.1/go.mod"
	"github.com/coreos/go-oidc/v3 v3.11.0"
	"github.com/coreos/go-oidc/v3 v3.11.0/go.mod"
	"github.com/corpix/uarand v0.2.0"
	"github.com/corpix/uarand v0.2.0/go.mod"
	"github.com/cpuguy83/go-md2man/v2 v2.0.4"
	"github.com/cpuguy83/go-md2man/v2 v2.0.4/go.mod"
	"github.com/creack/pty v1.1.18"
	"github.com/creack/pty v1.1.18/go.mod"
	"github.com/davecgh/go-spew v1.1.1"
	"github.com/davecgh/go-spew v1.1.1/go.mod"
	"github.com/dgraph-io/badger v1.6.2"
	"github.com/dgraph-io/badger v1.6.2/go.mod"
	"github.com/dgraph-io/badger/v2 v2.2007.4"
	"github.com/dgraph-io/badger/v2 v2.2007.4/go.mod"
	"github.com/dgraph-io/ristretto v0.1.1"
	"github.com/dgraph-io/ristretto v0.1.1/go.mod"
	"github.com/dgryski/go-farm v0.0.0-20200201041132-a6ae2369ad13"
	"github.com/dgryski/go-farm v0.0.0-20200201041132-a6ae2369ad13/go.mod"
	"github.com/dustin/go-humanize v1.0.1"
	"github.com/dustin/go-humanize v1.0.1/go.mod"
	"github.com/felixge/httpsnoop v1.0.4"
	"github.com/felixge/httpsnoop v1.0.4/go.mod"
	"github.com/go-chi/chi/v5 v5.1.0"
	"github.com/go-chi/chi/v5 v5.1.0/go.mod"
	"github.com/go-jose/go-jose/v4 v4.0.2"
	"github.com/go-jose/go-jose/v4 v4.0.2/go.mod"
	"github.com/go-kit/kit v0.13.0"
	"github.com/go-kit/kit v0.13.0/go.mod"
	"github.com/go-kit/log v0.2.1"
	"github.com/go-kit/log v0.2.1/go.mod"
	"github.com/go-logfmt/logfmt v0.6.0"
	"github.com/go-logfmt/logfmt v0.6.0/go.mod"
	"github.com/go-logr/logr v1.4.2"
	"github.com/go-logr/logr v1.4.2/go.mod"
	"github.com/go-logr/stdr v1.2.2"
	"github.com/go-logr/stdr v1.2.2/go.mod"
	"github.com/go-sql-driver/mysql v1.8.1"
	"github.com/go-sql-driver/mysql v1.8.1/go.mod"
	"github.com/golang-jwt/jwt/v5 v5.2.1"
	"github.com/golang-jwt/jwt/v5 v5.2.1/go.mod"
	"github.com/golang/glog v1.2.2"
	"github.com/golang/glog v1.2.2/go.mod"
	"github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da"
	"github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da/go.mod"
	"github.com/golang/protobuf v1.5.4"
	"github.com/golang/protobuf v1.5.4/go.mod"
	"github.com/golang/snappy v0.0.4"
	"github.com/golang/snappy v0.0.4/go.mod"
	"github.com/google/btree v1.1.2"
	"github.com/google/btree v1.1.2/go.mod"
	"github.com/google/certificate-transparency-go v1.1.7"
	"github.com/google/certificate-transparency-go v1.1.7/go.mod"
	"github.com/google/go-tpm-tools v0.4.4"
	"github.com/google/go-tpm-tools v0.4.4/go.mod"
	"github.com/google/go-tspi v0.3.0"
	"github.com/google/go-tspi v0.3.0/go.mod"
	"github.com/google/s2a-go v0.1.8"
	"github.com/google/s2a-go v0.1.8/go.mod"
	"github.com/googleapis/enterprise-certificate-proxy v0.3.4"
	"github.com/googleapis/enterprise-certificate-proxy v0.3.4/go.mod"
	"github.com/googleapis/gax-go/v2 v2.13.0"
	"github.com/googleapis/gax-go/v2 v2.13.0/go.mod"
	"github.com/huandu/xstrings v1.5.0"
	"github.com/huandu/xstrings v1.5.0/go.mod"
	"github.com/jackc/pgpassfile v1.0.0"
	"github.com/jackc/pgpassfile v1.0.0/go.mod"
	"github.com/jackc/pgservicefile v0.0.0-20221227161230-091c0ba34f0a"
	"github.com/jackc/pgservicefile v0.0.0-20221227161230-091c0ba34f0a/go.mod"
	"github.com/jackc/pgx/v5 v5.6.0"
	"github.com/jackc/pgx/v5 v5.6.0/go.mod"
	"github.com/jackc/puddle/v2 v2.2.1"
	"github.com/jackc/puddle/v2 v2.2.1/go.mod"
	"github.com/kballard/go-shellquote v0.0.0-20180428030007-95032a82bc51"
	"github.com/kballard/go-shellquote v0.0.0-20180428030007-95032a82bc51/go.mod"
	"github.com/klauspost/compress v1.17.9"
	"github.com/klauspost/compress v1.17.9/go.mod"
	"github.com/kr/pty v1.1.8"
	"github.com/kr/pty v1.1.8/go.mod"
	"github.com/kylelemons/godebug v1.1.0"
	"github.com/kylelemons/godebug v1.1.0/go.mod"
	"github.com/mattn/go-colorable v0.1.13"
	"github.com/mattn/go-colorable v0.1.13/go.mod"
	"github.com/mattn/go-isatty v0.0.20"
	"github.com/mattn/go-isatty v0.0.20/go.mod"
	"github.com/mgutz/ansi v0.0.0-20200706080929-d51e80ef957d"
	"github.com/mgutz/ansi v0.0.0-20200706080929-d51e80ef957d/go.mod"
	"github.com/mitchellh/copystructure v1.2.0"
	"github.com/mitchellh/copystructure v1.2.0/go.mod"
	"github.com/mitchellh/reflectwalk v1.0.2"
	"github.com/mitchellh/reflectwalk v1.0.2/go.mod"
	"github.com/munnerz/goautoneg v0.0.0-20191010083416-a7dc8b61c822"
	"github.com/munnerz/goautoneg v0.0.0-20191010083416-a7dc8b61c822/go.mod"
	"github.com/newrelic/go-agent/v3 v3.34.0"
	"github.com/newrelic/go-agent/v3 v3.34.0/go.mod"
	"github.com/peterbourgon/diskv/v3 v3.0.1"
	"github.com/peterbourgon/diskv/v3 v3.0.1/go.mod"
	"github.com/pkg/browser v0.0.0-20240102092130-5ac0b6a4141c"
	"github.com/pkg/browser v0.0.0-20240102092130-5ac0b6a4141c/go.mod"
	"github.com/pmezard/go-difflib v1.0.0"
	"github.com/pmezard/go-difflib v1.0.0/go.mod"
	"github.com/prometheus/client_golang v1.20.3"
	"github.com/prometheus/client_golang v1.20.3/go.mod"
	"github.com/prometheus/client_model v0.6.1"
	"github.com/prometheus/client_model v0.6.1/go.mod"
	"github.com/prometheus/common v0.55.0"
	"github.com/prometheus/common v0.55.0/go.mod"
	"github.com/prometheus/procfs v0.15.1"
	"github.com/prometheus/procfs v0.15.1/go.mod"
	"github.com/rs/xid v1.6.0"
	"github.com/rs/xid v1.6.0/go.mod"
	"github.com/russross/blackfriday/v2 v2.1.0"
	"github.com/russross/blackfriday/v2 v2.1.0/go.mod"
	"github.com/schollz/jsonstore v1.1.0"
	"github.com/schollz/jsonstore v1.1.0/go.mod"
	"github.com/shopspring/decimal v1.4.0"
	"github.com/shopspring/decimal v1.4.0/go.mod"
	"github.com/shurcooL/sanitized_anchor_name v1.0.0"
	"github.com/shurcooL/sanitized_anchor_name v1.0.0/go.mod"
	"github.com/sirupsen/logrus v1.9.3"
	"github.com/sirupsen/logrus v1.9.3/go.mod"
	"github.com/smallstep/nosql v0.7.0"
	"github.com/smallstep/nosql v0.7.0/go.mod"
	"github.com/smallstep/pkcs7 v0.0.0-20231024181729-3b98ecc1ca81"
	"github.com/smallstep/pkcs7 v0.0.0-20231024181729-3b98ecc1ca81/go.mod"
	"github.com/smallstep/scep v0.0.0-20231024192529-aee96d7ad34d"
	"github.com/smallstep/scep v0.0.0-20231024192529-aee96d7ad34d/go.mod"
	"github.com/spf13/cast v1.7.0"
	"github.com/spf13/cast v1.7.0/go.mod"
	"github.com/weppos/publicsuffix-go v0.20.0"
	"github.com/weppos/publicsuffix-go v0.20.0/go.mod"
	"github.com/x448/float16 v0.8.4"
	"github.com/x448/float16 v0.8.4/go.mod"
	"go.etcd.io/bbolt v1.3.10"
	"go.etcd.io/bbolt v1.3.10/go.mod"
	"go.opencensus.io v0.24.0"
	"go.opencensus.io v0.24.0/go.mod"
	"go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc v0.54.0"
	"go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc v0.54.0/go.mod"
	"go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp v0.54.0"
	"go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp v0.54.0/go.mod"
	"go.opentelemetry.io/otel v1.29.0"
	"go.opentelemetry.io/otel v1.29.0/go.mod"
	"go.opentelemetry.io/otel/metric v1.29.0"
	"go.opentelemetry.io/otel/metric v1.29.0/go.mod"
	"go.opentelemetry.io/otel/trace v1.29.0"
	"go.opentelemetry.io/otel/trace v1.29.0/go.mod"
	"go.step.sm/cli-utils v0.9.0"
	"go.step.sm/cli-utils v0.9.0/go.mod"
	"golang.org/x/exp v0.0.0-20240318143956-a85f2c67cd81"
	"golang.org/x/exp v0.0.0-20240318143956-a85f2c67cd81/go.mod"
	"golang.org/x/net v0.29.0"
	"golang.org/x/net v0.29.0/go.mod"
	"golang.org/x/oauth2 v0.23.0"
	"golang.org/x/oauth2 v0.23.0/go.mod"
	"golang.org/x/sync v0.8.0"
	"golang.org/x/sync v0.8.0/go.mod"
	"golang.org/x/text v0.19.0"
	"golang.org/x/text v0.19.0/go.mod"
	"golang.org/x/time v0.6.0"
	"golang.org/x/time v0.6.0/go.mod"
	"google.golang.org/api v0.198.0"
	"google.golang.org/api v0.198.0/go.mod"
	"google.golang.org/genproto v0.0.0-20240903143218-8af14fe29dc1"
	"google.golang.org/genproto v0.0.0-20240903143218-8af14fe29dc1/go.mod"
	"google.golang.org/genproto/googleapis/api v0.0.0-20240903143218-8af14fe29dc1"
	"google.golang.org/genproto/googleapis/api v0.0.0-20240903143218-8af14fe29dc1/go.mod"
	"google.golang.org/genproto/googleapis/rpc v0.0.0-20240903143218-8af14fe29dc1"
	"google.golang.org/genproto/googleapis/rpc v0.0.0-20240903143218-8af14fe29dc1/go.mod"
	"google.golang.org/grpc v1.67.0"
	"google.golang.org/grpc v1.67.0/go.mod"
	"gopkg.in/yaml.v3 v3.0.1"
	"gopkg.in/yaml.v3 v3.0.1/go.mod"
	"howett.net/plist v1.0.0"
	"howett.net/plist v1.0.0/go.mod"
	"k8s.io/klog/v2 v2.100.1"
	"k8s.io/klog/v2 v2.100.1/go.mod"
	"golang.org/x/vuln/cmd/govulncheck latest"
	"golang.org/x/vuln/cmd/govulncheck latest/go.mod"
	"gotest.tools/gotestsum latest"
	"gotest.tools/gotestsum latest/go.mod"
	"golang.org/x/tools/cmd/goimports latest"
	"golang.org/x/tools/cmd/goimports latest/go.mod"
	"github.com/chzyer/test v1.0.0"
	"github.com/chzyer/test v1.0.0/go.mod"
)
go-module_set_globals

IUSE="+pie fish softhsm zsh kms"

DESCRIPTION="A zero trust swiss army knife for working with X509"
HOMEPAGE="https://github.com/smallstep/cli"
SRC_URI="https://github.com/smallstep/cli/archive/v${PV}.tar.gz -> ${P}.tar.gz
	https://github.com/smallstep/cli/raw/refs/heads/master/go.sum"
#	${EGO_SUM_SRC_URI}

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
RESTRICT="test"
PROPERTIES="test_network"

RDEPEND="kms? ( >=app-crypt/step-kms-plugin-0.12.1 )
"

BDEPEND=">=dev-lang/go-1.25.6
	 >=dev-go/golangci-lint-1.61.0
	 >=dev-go/goreleaser-2.3.2
	 softhsm? ( >=dev-libs/softhsm-2.6.1-r3 )
"

S="${WORKDIR}/cli-${PV}"

DOCS=( {CHANGELOG,README}.md )

DOC_CONTENTS="Run 'env-update && source /etc/profile' to\\n
export STEPPATH envvar, after that you can init CA via\\n
'step-cli ca init' into /etc/step directory.\\n\\n"


go-module_src_unpack_gosum() {
	# DISTDIR is not set to global value but to local package build value
	eval $(grep "DISTDIR" /etc/portage/make.conf)
	# shellcheck disable=SC2120
	debug-print-function ${FUNCNAME} "$@"

	if [[ ! ${_GO_MODULE_SET_GLOBALS_CALLED} ]]; then
		die "go-module_set_globals must be called in global scope"
	fi

	einfo "Using go-proxy: $GOPROXY"
	local goproxy_dir="${GOPROXY/file:\/\//}"
	mkdir -p "${goproxy_dir}" || die

	# For each Golang module distfile, look up where it's supposed to go, and
	# symlink into place.
	local f
	local goproxy_mod_dir
	for f in ${_GOMODULE_GOSUM_REVERSE_MAP[@]}; do
		#goproxy_mod_path="${_GOMODULE_GOSUM_REVERSE_MAP["${f}"]}"
		goproxy_archive_path="${f}"
		goproxy_mod_path=$(echo "${f%.zip}" | sed -e 's/\@v\/.*/\@v/')
		if [[ -n "${goproxy_archive_path}" ]]; then
			# Build symlink hierarchy
			#local _encoded_filename=$(python3 -c "from urllib.parse import quote; print(quote('${f}'))" | sed -e 's/\//%2F/g' )
			local _encoded_filename=$(echo -n "${goproxy_archive_path}" | sed -e 's/\//%2F/g')
			local _encoded_module=$(echo -n "${goproxy_mod_path}" | sed -e 's/\//%2F/g' -e 's/\@v%2F.*$/\@v%2F/')
			ebegin "${_encoded_filename} -> ${goproxy_dir}/${goproxy_archive_path}"
				goproxy_mod_dir=$( dirname "${goproxy_dir}"/"${goproxy_archive_path}" )
				mkdir -p "${goproxy_mod_dir}" || die

				ln -sf "${DISTDIR}"/"${_encoded_filename}" "${goproxy_dir}/${goproxy_archive_path}" ||
					die "Failed to ln"
				local v=${goproxy_archive_path}
				v="${v%.mod}"
				v="${v%.zip}"
				v="${v//*\/}"
				_go-module_gosum_synthesize_files "${goproxy_mod_dir}" "${v}"
			eend $?
			for m in $(ls ${DISTDIR}/${_encoded_module}*.mod); do
				_mod_filename=$(echo -n "${m}" | sed -e 's/^.*\@v%2F//')

				ebegin "${m} -> ${goproxy_dir}/${goproxy_mod_path}/${_mod_filename}"
					goproxy_mod_dir=$( dirname "${goproxy_dir}"/"${goproxy_mod_path}" )
					if [ ! -e "${goproxy_mod_dir}" ]; then
						mkdir -p "${goproxy_mod_dir}" || die
					fi
					ln -sf "${DISTDIR}"/"${m}" "${goproxy_dir}/${goproxy_mod_path}/${_mod_filename}" ||
						die "Failed to ln mod"
				eend $?
			done
		else
			ebegin "Unpacking ${f}"
			unpack "$f"
			eend $?
		fi
	done

	# Validate the gosum now
	#einfo "Using local filesystem, ignore 'downloading' ..."
	#_go-module_src_unpack_verify_gosum
}

src_unpack() {
	echo "${DISTDIR}"
	unpack ${A}
	#echo ${_GOMODULE_GOSUM_REVERSE_MAP[@]}

	go-module_src_unpack_gosum

#	mkdir -p ${T}
#	ln -s ${DISTFILES} ${T}/go-proxy

#	EGO_SUM=""
#	go-module_src_unpack
	go-module_setup_proxy

	# This is set in Makefile:61
	DATE="$(date -u '+%Y-%m-%d-%H%M UTC')"
	export LDFLAGS="-w -X \"main.Version=${PV}\" -X \"main.BuildTime=${DATE}\""
	export MAKEFLAGS="-ldflags ${LDFLAGS}"
	export GO_EXTRA_BUILD_FLAGS="-v -buildmode=$(usex pie pie default) -trimpath -o ${PN}"
}

src_compile() {
	cd ${S}
	#ego build -ldflags "${LDFLAGS}" ${GO_EXTRA_BUILD_FLAGS} github.com/smallstep/cli/cmd/step
	go build -ldflags "${LDFLAGS}" ${GO_EXTRA_BUILD_FLAGS} ./cmd/...
#-buildmode=pie \
#		-ldflags "${LDFLAGS}" -trimpath -o step-cli ./cmd/...

	local completion
	for completion in bash fish zsh ; do
		edo ./step-cli completion ${completion} > step-cli.${completion}
		edo sed -i "s/step/step-cli/g" step-cli.${completion}
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
