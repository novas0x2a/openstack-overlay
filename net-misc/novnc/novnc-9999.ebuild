# Copyright 2011 Piston Cloud Computing, Inc. All Rights Reserved.

EAPI=3
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"
DISTUTILS_SRC_TEST="nosetests"

inherit git-2 distutils
EGIT_REPO_URI="https://github.com/sleepsonthefloor/noVNC.git"

DESCRIPTION="VNC client using HTML5 (Web Sockets, Canvas) with encryption (wss://) support"
HOMEPAGE="https://github.com/sleepsonthefloor/noVNC/"
SRC_URI=""

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="test"

DEPEND="test? ( dev-python/nose dev-python/mock )"
RDEPEND="${DEPEND}
	dev-python/imaging
	dev-python/websocket-client
	|| ( >=dev-lang/python-2.6
		( dev-lang/python:2.5 dev-python/simplejson )
		( dev-lang/python:2.4 dev-python/simplejson ) )
"
