# Copyright 2011 Piston Cloud Computing, Inc. All Rights Reserved.

EAPI=3
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABI="1"
DISTUTILS_SRC_TEST="nosetests"

inherit distutils

DESCRIPTION="Highly concurrent networking library"
HOMEPAGE="http://eventlet.net"
SRC_URI="http://pypi.python.org/packages/source/e/eventlet/${P}.tar.gz"
LICENSE="MIT"
KEYWORDS="amd64"
SLOT="0"
IUSE="doc examples"
DEPEND=""
RDEPEND=">=dev-python/greenlet-0.3"

src_install() {
	distutils_src_install
	if use doc; then
		dodoc "${S}"/doc/*
	fi
	if use examples; then
		insinto /usr/share/doc/"${PF}"/examples
		doins -r "${S}"/examples/*
	fi
}

src_test() {
	PYTHONPATH=. "${python}" setup.py nosetests || die "tests failed"
}

