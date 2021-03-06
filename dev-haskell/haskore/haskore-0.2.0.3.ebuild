# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.4

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="The Haskore Computer Music System"
HOMEPAGE="http://www.haskell.org/haskellwiki/Haskore"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="buildtests"

RDEPEND=">=dev-haskell/data-accessor-0.2:=[profile?] <dev-haskell/data-accessor-0.3:=[profile?]
	>=dev-haskell/event-list-0.1:=[profile?] <dev-haskell/event-list-0.2:=[profile?]
	>=dev-haskell/haskell-src-1.0:=[profile?] <dev-haskell/haskell-src-1.1:=[profile?]
	>=dev-haskell/markov-chain-0.0.1:=[profile?] <dev-haskell/markov-chain-0.1:=[profile?]
	>=dev-haskell/midi-0.2:=[profile?] <dev-haskell/midi-0.3:=[profile?]
	>=dev-haskell/non-negative-0.1:=[profile?] <dev-haskell/non-negative-0.2:=[profile?]
	>=dev-haskell/parsec-2.1:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/random-1.0:=[profile?] <dev-haskell/random-2.0:=[profile?]
	>=dev-haskell/transformers-0.0.1:=[profile?] <dev-haskell/transformers-0.4:=[profile?]
	>=dev-haskell/utility-ht-0.0.3:=[profile?] <dev-haskell/utility-ht-0.1:=[profile?]
	>=dev-lang/ghc-6.10.4:=
	buildtests? ( >=dev-haskell/hunit-1.2:=[profile?] <dev-haskell/hunit-1.3:=[profile?]
			>=dev-haskell/quickcheck-1:=[profile?] <dev-haskell/quickcheck-2:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6.0.3
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag buildtests buildtests)
}
