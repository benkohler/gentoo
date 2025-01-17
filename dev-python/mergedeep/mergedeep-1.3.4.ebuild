# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{9..11} )

inherit distutils-r1

DESCRIPTION="A deep merge tool for Python"
HOMEPAGE="https://github.com/clarketm/mergedeep/"
SRC_URI="https://github.com/clarketm/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~ppc ~riscv x86"

distutils_enable_tests pytest
distutils_enable_sphinx docs/source dev-python/alabaster dev-python/recommonmark
