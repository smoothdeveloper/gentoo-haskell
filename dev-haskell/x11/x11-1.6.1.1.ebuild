# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="X11"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A binding to the X11 graphics library"
HOMEPAGE="https://github.com/haskell-pkg-janitors/X11"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~sparc ~x86 ~amd64-linux ~ppc64 ~ppc-macos ~x86-linux"
IUSE=""

RDEPEND="dev-haskell/data-default:=[profile?]
		>=dev-lang/ghc-6.10.4:=
		unknown-c-lib/Xext
		unknown-c-lib/Xrandr
		x11-libs/libX11"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"

S="${WORKDIR}/${MY_P}"