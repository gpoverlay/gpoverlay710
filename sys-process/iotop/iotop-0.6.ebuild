# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{8..10} )
PYTHON_REQ_USE="ncurses(+)"
DISTUTILS_USE_SETUPTOOLS=no

inherit distutils-r1 linux-info

DESCRIPTION="Top-like UI used to show which process is using the I/O"
HOMEPAGE="http://guichaz.free.fr/iotop/"
SRC_URI="http://guichaz.free.fr/iotop/files/${P}.tar.bz2"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="amd64 arm arm64 ~hppa ~ia64 ~loong ~mips ppc ppc64 ~riscv sparc x86 ~amd64-linux ~x86-linux"

RDEPEND="!sys-process/iotop-c"

CONFIG_CHECK="~TASK_IO_ACCOUNTING ~TASK_DELAY_ACCT ~TASKSTATS ~VM_EVENT_COUNTERS"

DOCS=( NEWS README THANKS ChangeLog )

PATCHES=(
	"${FILESDIR}"/${P}-setup.py3.patch
	"${FILESDIR}"/${P}-Only-split-proc-status-lines-on-the-character.patch
	"${FILESDIR}"/${P}-Ignore-invalid-lines-in-proc-status-files.patch
	"${FILESDIR}"/${P}-Actually-skip-invalid-lines-in-proc-status.patch
)

pkg_setup() {
	linux-info_pkg_setup
}
