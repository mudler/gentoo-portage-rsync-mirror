# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-xemacs/clearcase/clearcase-1.10.ebuild,v 1.4 2014/08/10 18:46:04 slyfox Exp $

SLOT="0"
IUSE=""
DESCRIPTION="New Clearcase Version Control for XEmacs (UNIX, Windows)"
PKG_CAT="standard"

RDEPEND="app-xemacs/dired
app-xemacs/mail-lib
app-xemacs/xemacs-base
app-xemacs/sh-script
"
KEYWORDS="alpha amd64 ppc ppc64 sparc x86"

inherit xemacs-packages
