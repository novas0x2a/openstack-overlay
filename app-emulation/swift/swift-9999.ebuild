# Copyright 2011 Piston Cloud Computing, Inc. All Rights Reserved.

EAPI=3
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABI="1"
DISTUTILS_SRC_TEST="nosetests"

inherit distutils bzr
SRC_URI=""
EBZR_REPO_URI="lp:swift"

DESCRIPTION="Swift is a highly available, distributed, eventually consistent object/blob store."
HOMEPAGE="https://launchpad.net/swift"
LICENSE="Apache-2.0"
KEYWORDS="~amd64"
SLOT="0"
IUSE="test doc"
DEPEND="test? ( dev-python/nose )"

src_install() {
	distutils_src_install
	if use doc; then
		dodoc "${S}"/doc/*
	fi

}

src_test() {
	PYTHONPATH=. "${python}" setup.py nosetests || die "tests failed"
}

