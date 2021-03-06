# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.6.9999

CABAL_FEATURES="bin"
inherit haskell-cabal

DESCRIPTION="a REPL for Elm"
HOMEPAGE="https://github.com/evancz/elm-repl#elm-repl"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="net-libs/nodejs"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8.0.2
	dev-haskell/cmdargs
	dev-haskell/haskeline
	>=dev-haskell/mtl-2
	>=dev-haskell/parsec-3.0
	>=dev-haskell/transformers-0.2
	>=dev-lang/elm-0.10.1
	>=dev-lang/ghc-6.12.1
"
