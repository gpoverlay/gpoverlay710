# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake-multilib

DESCRIPTION="Wrapper to fake privilege separation"
HOMEPAGE="https://cwrap.org/uid_wrapper.html"
SRC_URI="https://www.samba.org/ftp/pub/cwrap/${P}.tar.gz
	https://ftp.samba.org/pub/cwrap/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~alpha amd64 arm arm64 ~hppa ~ia64 ppc ppc64 ~riscv sparc x86"
