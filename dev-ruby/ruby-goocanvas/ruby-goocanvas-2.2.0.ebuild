# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ruby/ruby-goocanvas/ruby-goocanvas-2.2.0.ebuild,v 1.2 2015/03/25 16:56:05 graaff Exp $

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21 ruby22"

inherit ruby-ng-gnome2

DESCRIPTION="Ruby binding of GooCanvas"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

RDEPEND="${RDEPEND}
	x11-libs/goocanvas:2.0"
DEPEND="${DEPEND}
	x11-libs/goocanvas:2.0"

ruby_add_bdepend "dev-ruby/pkg-config
	dev-ruby/rcairo"

ruby_add_rdepend ">=dev-ruby/ruby-gtk2-${PV}"
