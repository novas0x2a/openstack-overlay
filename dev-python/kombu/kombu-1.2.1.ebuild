# Copyright 2011 Piston Cloud Computing, Inc. All Rights Reserved.

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"
DISTUTILS_SRC_TEST="nosetests"

inherit distutils

DESCRIPTION="AMQP Messaging Framework for Python"
HOMEPAGE="http://github.com/ask/kombu/"
SRC_URI="http://pypi.python.org/packages/source/k/kombu/${P}.tar.gz"
LICENSE="BSD-2"
KEYWORDS="~amd64"
SLOT="0"
IUSE="test doc examples"
DEPEND=""
RDEPEND=">=dev-python/anyjson-0.3.1
	>=dev-python/amqplib-1.0"

src_install() {
	distutils_src_install
	if use doc; then
		dodoc "${S}"/docs/*
	fi
	if use examples; then
		insinto /usr/share/doc/"${PF}"/examples
		doins -r "${S}"/examples/*
	fi
}

src_test() {
	PYTHONPATH=. "${python}" setup.py nosetests || die "tests failed"
}
