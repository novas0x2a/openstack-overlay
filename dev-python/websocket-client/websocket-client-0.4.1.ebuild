# Copyright 2011 Piston Cloud Computing, Inc. All Rights Reserved.

EAPI=3
SUPPORT_PYTHON_ABIS="1"

inherit distutils

DESCRIPTION="Pythonic manipulation of IPv4, IPv6, CIDR, EUI and MAC network addresses"
HOMEPAGE="https://github.com/liris/websocket-client"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
