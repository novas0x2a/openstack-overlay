# Copyright 2011 Piston Cloud Computing, Inc. All Rights Reserved.

EAPI=3
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABI="1"

inherit distutils


DESCRIPTION="client for administering OpenStack Nova"
HOMEPAGE="http://www.openstack.org"
SRC_URI="http://pypi.python.org/packages/source/n/nova-adminclient/${P}.tar.gz"
LICENSE="Apache-2.0"
KEYWORDS="amd64"
SLOT="0"
IUSE=""
DEPEND=""
RDEPEND="dev-python/boto"

