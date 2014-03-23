# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A test framework and KATs for cryptographic operations."
HOMEPAGE="http://trac.haskell.org/crypto-api/wiki"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/cereal:=[profile?]
	>=dev-haskell/crypto-api-0.13:=[profile?]
	dev-haskell/hunit:=[profile?]
	>=dev-haskell/quickcheck-2.4:=[profile?]
	>=dev-haskell/test-framework-0.4:=[profile?]
	>=dev-haskell/test-framework-hunit-0.2:=[profile?]
	>=dev-haskell/test-framework-quickcheck2-0.3:=[profile?]
	>=dev-lang/ghc-6.12.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8.0.2
"
