# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A toolkit for making compile-time interpolated templates"
HOMEPAGE="http://www.yesodweb.com/book/shakespearean-templates"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/parsec-2:=[profile?]
		<dev-haskell/parsec-4:=[profile?]
		>=dev-haskell/text-0.7:=[profile?]
		<dev-haskell/text-0.12:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		test? ( >=dev-haskell/hspec-1.3
		)
		>=dev-haskell/cabal-1.8"

src_configure() {
	cabal_src_configure \
		$(use_enable test tests) \
		$(cabal_flag test test_export)
}