# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal elisp-common

DESCRIPTION="Source code suggestions"
HOMEPAGE="http://community.haskell.org/~ndm/hlint/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+threaded emacs"

RDEPEND=">=dev-haskell/cpphs-1.11:=[profile?]
		<dev-haskell/cpphs-1.18:=[profile?]
		>=dev-haskell/haskell-src-exts-1.11:=[profile?]
		<dev-haskell/haskell-src-exts-1.14:=[profile?]
		>=dev-haskell/hscolour-1.17:=[profile?]
		<dev-haskell/hscolour-1.21:=[profile?]
		>=dev-haskell/transformers-0.0:=[profile?]
		<dev-haskell/transformers-0.4:=[profile?]
		>=dev-haskell/uniplate-1.5:=[profile?]
		<dev-haskell/uniplate-1.7:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

SITEFILE="60${PN}-gentoo.el"

src_prepare() {
	cabal_chdeps \
		'cpphs >= 1.11 && < 1.17' 'cpphs >= 1.11 && < 1.18'
}

src_configure() {
	threaded_flag=""
	if $(ghc-getghc) --info | grep "Support SMP" | grep -q "YES"; then
		threaded_flag="--flags=threaded"
		einfo "$P will be built with threads support"
	else
		threaded_flag="--flags=-threaded"
		einfo "$P will be built without threads support"
	fi
	cabal_src_configure $threaded_flag
}

src_compile() {
	cabal_src_compile

	use emacs && elisp-compile data/hs-lint.el
}

src_install() {
	cabal_src_install

	if use emacs; then
		elisp-install ${PN} data/*.el data/*.elc || die "elisp-install failed."
		elisp-site-file-install "${FILESDIR}/${SITEFILE}"
	fi

	dodoc hlint.htm
}

pkg_postinst() {
	ghc-package_pkg_postinst
	use emacs && elisp-site-regen
}

pkg_postrm() {
	use emacs && elisp-site-regen
}