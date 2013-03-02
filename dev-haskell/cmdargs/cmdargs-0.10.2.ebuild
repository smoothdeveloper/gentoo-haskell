# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Command line argument processing"
HOMEPAGE="http://community.haskell.org/~ndm/cmdargs/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+quotation test"

RDEPEND=">=dev-haskell/transformers-0.2:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag test testprog) \
		$(cabal_flag quotation quotation)
}

src_test() {
	"${S}/dist/build/cmdargs/cmdargs" || die "unit tests failed"
}

src_install() {
	cabal_src_install
	dodoc "${PN}.htm"
	use test && rm "${ED}"/usr/bin/cmdargs
}