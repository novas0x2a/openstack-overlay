# Copyright 2011 Piston Cloud Computing, Inc. All Rights Reserved.

EAPI=3
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABI="1"
DISTUTILS_SRC_TEST="nosetests"

inherit distutils

DESCRIPTION="AMQP Messaging Framework for Python"
HOMEPAGE="http://github.com/ask/carrot/"
SRC_URI="http://pypi.python.org/packages/source/c/carrot/${P}.tar.gz"
LICENSE="BSD-2"
KEYWORDS="amd64"
SLOT="0"
IUSE="doc"
DEPEND=""
RDEPEND="dev-python/anyjson
	>=dev-python/amqplib-0.6"

src_install() {
	distutils_src_install
	if use doc; then
		dodoc "${S}"/docs/*
	fi
}
