# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Linear Algebra"
HOMEPAGE="http://github.com/ekmett/linear/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/binary-0.5:=[profile?] <dev-haskell/binary-0.8:=[profile?]
	>=dev-haskell/distributive-0.2.2:=[profile?] <dev-haskell/distributive-1:=[profile?]
	>=dev-haskell/hashable-1.1:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/reflection-1.3.2:=[profile?] <dev-haskell/reflection-2:=[profile?]
	>=dev-haskell/semigroupoids-3:=[profile?] <dev-haskell/semigroupoids-5:=[profile?]
	>=dev-haskell/semigroups-0.9:=[profile?] <dev-haskell/semigroups-1:=[profile?]
	>=dev-haskell/tagged-0.4.4:=[profile?] <dev-haskell/tagged-1:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?] <dev-haskell/transformers-0.4:=[profile?]
	>=dev-haskell/unordered-containers-0.2.3:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.11:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/doctest-0.8 <dev-haskell/doctest-0.10
		>=dev-haskell/hunit-1.2.5
		>=dev-haskell/lens-3.8.4
		>=dev-haskell/simple-reflect-0.3.1
		>=dev-haskell/test-framework-0.8
		>=dev-haskell/test-framework-hunit-0.3 )
"