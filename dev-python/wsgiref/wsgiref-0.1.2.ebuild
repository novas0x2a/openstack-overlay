# Copyright 2011 Piston Cloud Computing, Inc. All Rights Reserved.

EAPI=3
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABI="1"

inherit distutils

DESCRIPTION="WSGI (PEP 333) Reference Library"
HOMEPAGE="http://cheeseshop.python.org/pypi/wsgiref"
SRC_URI="http://pypi.python.org/packages/source/w/wsgiref/${P}.zip"
LICENSE="|| ( PSF ZPL )"
KEYWORDS="amd64"
SLOT="0"
IUSE="doc"
DEPEND="app-arch/unzip"

src_install() {
	distutils_src_install
	if use doc; then
		dodoc "${S}"/docs/*
	fi

}

