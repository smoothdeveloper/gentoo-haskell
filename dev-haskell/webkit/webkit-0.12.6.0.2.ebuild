# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.5.9999

GTK_MAJ_VER="2"

MY_PV="${PV%.*}"
MY_P="${PN}-${MY_PV}"

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Binding to the Webkit library."
HOMEPAGE="http://projects.haskell.org/gtk2hs/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${MY_PV}/${MY_P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="${GTK_MAJ_VER}/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cairo-0.12:0=[profile?] <dev-haskell/cairo-0.13:0=[profile?]
	>=dev-haskell/glib-0.12.3:0=[profile?] <dev-haskell/glib-0.13:0=[profile?]
	>=dev-haskell/gtk-0.12.5.4:${GTK_MAJ_VER}=[profile?] <dev-haskell/gtk-0.13:${GTK_MAJ_VER}=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/pango-0.12:0=[profile?] <dev-haskell/pango-0.13:0=[profile?]
	>=dev-lang/ghc-6.10.4:=
	net-libs/webkit-gtk:2
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	>=dev-haskell/gtk2hs-buildtools-0.12.5.1-r1:0=
	virtual/pkgconfig
"

S="${WORKDIR}/${MY_P}"
