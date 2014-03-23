# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Generic support for programming with names and binders"
HOMEPAGE="http://code.google.com/p/replib/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/binary-0.7:=[profile?] <dev-haskell/binary-0.8:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-2.2:=[profile?]
	>=dev-haskell/replib-0.5.3:=[profile?] <dev-haskell/replib-0.6:=[profile?]
	>=dev-haskell/transformers-0.2.2.0:=[profile?] <dev-haskell/transformers-0.4:=[profile?]
	>=dev-lang/ghc-7.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10.0.0
"
