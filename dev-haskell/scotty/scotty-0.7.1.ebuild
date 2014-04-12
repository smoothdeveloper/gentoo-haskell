# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Haskell web framework inspired by Ruby's Sinatra, using WAI and Warp"
HOMEPAGE="https://github.com/scotty-web/scotty"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.6.2.1:=[profile?] <dev-haskell/aeson-0.8:=[profile?]
	>=dev-haskell/blaze-builder-0.3.3.0:=[profile?] <dev-haskell/blaze-builder-0.4:=[profile?]
	>=dev-haskell/case-insensitive-1.0.0.1:=[profile?] <dev-haskell/case-insensitive-1.2:=[profile?]
	>=dev-haskell/conduit-1.0.9.3:=[profile?] <dev-haskell/conduit-1.1:=[profile?]
	>=dev-haskell/data-default-0.5.3:=[profile?] <dev-haskell/data-default-0.6:=[profile?]
	>=dev-haskell/http-types-0.8.2:=[profile?] <dev-haskell/http-types-0.9:=[profile?]
	>=dev-haskell/mtl-2.1.2:=[profile?] <dev-haskell/mtl-2.2:=[profile?]
	>=dev-haskell/regex-compat-0.95.1:=[profile?] <dev-haskell/regex-compat-0.96:=[profile?]
	>=dev-haskell/text-0.11.3.1:=[profile?] <dev-haskell/text-1.2:=[profile?]
	>=dev-haskell/transformers-0.3.0.0:=[profile?] <dev-haskell/transformers-0.4:=[profile?]
	>=dev-haskell/wai-2.0.0:=[profile?] <dev-haskell/wai-2.2:=[profile?]
	>=dev-haskell/wai-extra-2.0.1:=[profile?] <dev-haskell/wai-extra-2.2:=[profile?]
	>=dev-haskell/warp-2.1.1:=[profile?] <dev-haskell/warp-2.2:=[profile?]
	>=dev-lang/ghc-7.6.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
"
