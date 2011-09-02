# Copyright 2011 Piston Cloud Computing, Inc. All Rights Reserved.

EAPI=3
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"
DISTUTILS_SRC_TEST="nosetests"

# Tests are broken :*(
RESTRICT="test"

inherit git-2 distutils
EGIT_REPO_URI="https://github.com/piston/openstackx.git"

DESCRIPTION="Client library extensions for the OpenStack API"
HOMEPAGE="http://github.com/cloudbuilders/openstackx/"
SRC_URI=""

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="test"

DEPEND="test? ( dev-python/nose dev-python/mock )"
RDEPEND="${DEPEND}
	dev-python/httplib2
	dev-python/argparse
	dev-python/prettytable
	dev-python/netaddr
	dev-python/webob
	|| ( >=dev-lang/python-2.6
		( dev-lang/python:2.5 dev-python/simplejson )
		( dev-lang/python:2.4 dev-python/simplejson ) )
"
