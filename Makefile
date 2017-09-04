# Created by: Carlos J. Puga Medina <cpm@FreeBSD.org>
# $FreeBSD$

PORTNAME=	chrome-gnome-shell
PORTVERSION=	9
CATEGORIES=	deskutils gnome
MASTER_SITES=	GNOME
DIST_SUBDIR=	gnome3

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	GNOME Shell extensions integration for web browsers

LICENSE=	GPLv3+
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	gsha256sum:sysutils/coreutils \
		jq:textproc/jq
RUN_DEPENDS=	dbus-daemon:devel/dbus \
		gnome-shell>=0:x11/gnome-shell \
		${PYTHON_PKGNAMEPREFIX}requests>=2.0:www/py-requests

USES=		cmake localbase pkgconfig python:2 tar:xz
USE_GNOME=	pygobject3
CMAKE_ARGS=	-DBUILD_EXTENSION=OFF
INSTALL_TARGET=	install
INSTALLS_ICONS=	yes

NO_ARCH=	yes

PKGMESSAGE=	../gnome-shell-extra-extensions/pkg-message.slaves

.include <bsd.port.mk>
