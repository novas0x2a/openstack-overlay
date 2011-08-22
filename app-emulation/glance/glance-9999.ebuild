# Copyright 2011 Piston Cloud Computing, Inc. All Rights Reserved.

EAPI=3
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABI="1"
DISTUTILS_SRC_TEST="nosetests"

inherit bzr distutils
SRC_URI=""
EBZR_REPO_URI="lp:glance"

DESCRIPTION="OpenStack: The Glance project provides services for discovering, registering, and retrieving virtual machine images."
HOMEPAGE="http://glance.openstack.org/"

LICENSE="Apache-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
  dev-python/anyjson
  dev-python/argparse
  dev-python/boto
  dev-vcs/bzr
  >=dev-python/eventlet-0.9.12
  >=dev-python/greenlet-0.3.1
  dev-python/httplib2
  dev-python/kombu
  >=dev-python/mox-0.5.0
  dev-python/nose
  dev-python/nose-exclude
  dev-python/pastedeploy
  >=dev-python/pep8-0.6.1
  >=dev-python/pylint-0.19
  dev-python/sphinx
  >=dev-python/sqlalchemy-0.6.3 <dev-python/sqlalchemy-0.7
  >=dev-python/sqlalchemy-migrate-0.6 <dev-python/sqlalchemy-migrate-0.7
  app-emulation/swift
  >=dev-python/webob-1.0.8
  dev-python/wsgiref
  dev-python/xattr
"

RDEPEND="${DEPEND}"

src_test() {
	PYTHONPATH=. "${python}" setup.py nosetests || die "tests failed"
}
