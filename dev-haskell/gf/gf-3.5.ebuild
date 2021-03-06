# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.4.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit base haskell-cabal

DESCRIPTION="Grammatical Framework"
HOMEPAGE="http://www.grammaticalframework.org/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2 LGPL-2 BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+interrupt +new-comp +server"

RDEPEND="dev-haskell/fst:=[profile?]
	dev-haskell/haskeline:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/parallel-3:=[profile?]
	dev-haskell/random:=[profile?]
	dev-haskell/time-compat:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	>=dev-lang/ghc-6.12.1:=
	server? ( dev-haskell/cgi:=[profile?]
			dev-haskell/httpd-shed:=[profile?]
			dev-haskell/json:=[profile?]
			dev-haskell/network:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8.0.2
	dev-haskell/happy
"

PATCHES=(
	"${FILESDIR}"/${PN}-3.4-stderr-utf8.patch
	"${FILESDIR}"/${PN}-3.4-fix-O2.patch
	)

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag interrupt interrupt) \
		$(cabal_flag new-comp new-comp) \
		$(cabal_flag server server)
}
