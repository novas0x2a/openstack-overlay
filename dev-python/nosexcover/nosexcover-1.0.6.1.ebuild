# Copyright 2011 Piston Cloud Computing, Inc. All Rights Reserved.

EAPI=3
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABI="1"

inherit distutils

DESCRIPTION="Extends nose.plugins.cover to add Cobertura-style XML reports"
HOMEPAGE="http://github.com/cmheisel/nose-xcover/"
SRC_URI="http://pypi.python.org/packages/source/n/nosexcover/${P}.tar.gz"
LICENSE="BSD-2"
KEYWORDS="amd64"
SLOT="0"
IUSE=""
DEPEND=""
RDEPEND="dev-python/nose
	dev-python/coverage"

