# Copyright 2011 Piston Cloud Computing, Inc. All Rights Reserved.

EAPI=3

SRC_URI=""

DESCRIPTION="Nova is a cloud computing fabric controller"
HOMEPAGE="http://nova.openstack.org/"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
  app-emulation/glance
  dev-python/amqplib
  dev-python/anyjson
  dev-python/boto
  dev-python/carrot
  dev-python/cheetah
  dev-python/coverage
  dev-python/eventlet
  dev-python/git-python
  dev-python/greenlet
  dev-python/lockfile
  dev-python/lxml
  dev-python/m2crypto
  dev-python/mox
  dev-python/netaddr
  dev-python/nose
  dev-python/novaclient
  dev-python/paramiko
  dev-python/paste
  dev-python/pastedeploy
  dev-python/pep8
  dev-python/pylint
  dev-python/python-daemon
  dev-python/python-gflags
  dev-python/redis-py
  dev-python/routes
  dev-python/sphinx
  dev-python/sqlalchemy
  dev-python/sqlalchemy-migrate
  dev-python/suds
  >=dev-python/webob-1.0.8
  dev-python/wsgiref
  dev-python/xattr
  dev-vcs/bzr
  dev-python/nova-adminclient
  dev-python/nosexcover
"
RDEPEND="${DEPEND}"
