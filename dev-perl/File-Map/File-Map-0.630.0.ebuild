# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/File-Map/File-Map-0.630.0.ebuild,v 1.1 2015/05/18 21:18:15 dilfridge Exp $

EAPI=5

MODULE_AUTHOR=LEONT
MODULE_VERSION=0.63
inherit perl-module

DESCRIPTION="Memory mapping made simple and safe"

SLOT="0"
KEYWORDS="~amd64 ~arm ~ppc ~x86 ~amd64-linux ~x86-linux"
IUSE="test"

RDEPEND="
	virtual/perl-Carp
	dev-perl/PerlIO-Layers
	>=dev-perl/Sub-Exporter-Progressive-0.1.5
	virtual/perl-XSLoader
"
DEPEND="${RDEPEND}
	>=virtual/perl-Module-Build-0.360.100
	test? (
		virtual/perl-File-Spec
		virtual/perl-IO
		virtual/perl-Scalar-List-Utils
		dev-perl/Test-Fatal
		virtual/perl-Test-Simple
		>=dev-perl/Test-Warnings-0.5.0
		virtual/perl-Time-HiRes
	)
"

SRC_TEST="do parallel"
