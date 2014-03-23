# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.6.9999
#hackport: flags: -lib-werror

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Sharing code for serialization between binary and cereal"
HOMEPAGE="http://github.com/analytics/bytes"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+test-doctests"

RDEPEND=">=dev-haskell/binary-0.5.1:=[profile?] <dev-haskell/binary-0.8:=[profile?]
	>=dev-haskell/cereal-0.3.5:=[profile?] <dev-haskell/cereal-0.5:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-2.2:=[profile?]
	>=dev-haskell/text-0.2:=[profile?] <dev-haskell/text-1.2:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?] <dev-haskell/transformers-0.4:=[profile?]
	>=dev-haskell/transformers-compat-0.1:=[profile?] <dev-haskell/transformers-compat-1:=[profile?]
	>=dev-haskell/void-0.6:=[profile?] <dev-haskell/void-0.7:=[profile?]
	>=dev-lang/ghc-7.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10.0.0
	test? ( test-doctests? ( >=dev-haskell/doctest-0.9.1 ) )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-lib-werror \
		$(cabal_flag test-doctests test-doctests)
}
