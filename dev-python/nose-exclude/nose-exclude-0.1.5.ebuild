# Copyright 2011 Piston Cloud Computing, Inc. All Rights Reserved.

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"
DISTUTILS_SRC_TEST="nosetests"

inherit distutils

DESCRIPTION="Exclude specific directories from nosetests runs."
HOMEPAGE="http://bitbucket.org/kgrandis/nose-exclude/"
SRC_URI="http://pypi.python.org/packages/source/n/${PN}/${P}.tar.gz"
LICENSE="LGPL-2"
KEYWORDS="~amd64"
SLOT="0"
IUSE="test"
DEPEND=""
RDEPEND="test? ( dev-python/nose )"

src_test() {
	PYTHONPATH=. "${python}" setup.py nosetests || die "tests failed"
}
