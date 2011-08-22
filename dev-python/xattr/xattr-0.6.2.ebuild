# Copyright 2011 Piston Cloud Computing, Inc. All Rights Reserved.

EAPI=3
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABI="1"
DISTUTILS_SRC_TEST="nosetests"

inherit distutils


DESCRIPTION="Python wrapper for extended filesystem attributes"
HOMEPAGE="http://github.com/xattr/xattr"
SRC_URI="http://pypi.python.org/packages/source/x/xattr/${P}.tar.gz"
LICENSE="MIT"
KEYWORDS="~amd64"
SLOT="0"
IUSE=""
DEPEND="dev-python/setuptools"

