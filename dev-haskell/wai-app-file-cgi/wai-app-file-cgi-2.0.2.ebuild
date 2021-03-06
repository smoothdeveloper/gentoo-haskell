# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="File/CGI/Rev Proxy App of WAI"
HOMEPAGE="http://www.mew.org/~kazu/proj/mighttpd/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

RESTRICT="test"
LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.10.0.0:=[profile?]
	dev-haskell/attoparsec-conduit:=[profile?]
	dev-haskell/blaze-builder:=[profile?]
	dev-haskell/blaze-html:=[profile?]
	dev-haskell/case-insensitive:=[profile?]
	>=dev-haskell/conduit-0.5:=[profile?]
	dev-haskell/data-default-class:=[profile?]
	dev-haskell/http-client:=[profile?]
	dev-haskell/http-client-conduit:=[profile?]
	dev-haskell/http-date:=[profile?]
	>=dev-haskell/http-types-0.7:=[profile?]
	dev-haskell/io-choice:=[profile?]
	dev-haskell/lifted-base:=[profile?]
	dev-haskell/mime-types:=[profile?]
	dev-haskell/network:=[profile?]
	dev-haskell/sockaddr:=[profile?]
	dev-haskell/static-hash:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/transformers:=[profile?]
	>=dev-haskell/wai-2.0:=[profile?]
	dev-haskell/word8:=[profile?]
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/doctest-0.9.3
		>=dev-haskell/hspec-1.3
		dev-haskell/http
		>=dev-haskell/warp-2.0 )
"
