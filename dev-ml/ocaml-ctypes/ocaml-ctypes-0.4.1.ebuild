# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ml/ocaml-ctypes/ocaml-ctypes-0.4.1.ebuild,v 1.3 2015/05/21 07:27:10 aballier Exp $

EAPI=5

inherit findlib

DESCRIPTION="Library for binding to C libraries using pure OCaml"
HOMEPAGE="https://github.com/ocamllabs/ocaml-ctypes"
SRC_URI="https://github.com/ocamllabs/ocaml-ctypes/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm"
IUSE=""

RDEPEND="
	>=dev-lang/ocaml-4:=[ocamlopt]
	virtual/libffi
"
DEPEND="${RDEPEND}"

src_compile() {
	emake -j1
}

src_test() {
	emake -j1 test
}

src_install() {
	findlib_src_install
	dodoc CHANGES.md README.md
}
