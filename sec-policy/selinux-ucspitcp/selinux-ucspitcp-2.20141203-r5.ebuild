# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sec-policy/selinux-ucspitcp/selinux-ucspitcp-2.20141203-r5.ebuild,v 1.1 2015/04/15 15:43:22 perfinion Exp $
EAPI="5"

IUSE=""
MODS="ucspitcp"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for ucspitcp"

if [[ $PV == 9999* ]] ; then
	KEYWORDS=""
else
	KEYWORDS="~amd64 ~x86"
fi
