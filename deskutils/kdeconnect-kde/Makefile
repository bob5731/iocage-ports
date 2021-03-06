# $FreeBSD$

PORTNAME=	kdeconnect-kde
DISTVERSION=	1.3.1
CATEGORIES=	deskutils kde
MASTER_SITES=	KDE/stable/kdeconnect/${DISTVERSION}/src/
DIST_SUBDIR=	KDE

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Support for KDE to interface between your phone and your computer

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/COPYING

LIB_DEPENDS=	libfakekey.so:x11/libfakekey \
		libqca-qt5.so:devel/qca@qt5
RUN_DEPENDS=	sshfs:sysutils/fusefs-sshfs

CONFLICTS_INSTALL=	kdeconnect-kde-0.7* kdeconnect-kde-kde4-0.7.*

USES=		cmake:outsource compiler:c++11-lang desktop-file-utils gettext kde:5 \
		pkgconfig qt:5 tar:xz
USE_KDE=	auth bookmarks codecs completion config configwidgets \
		coreaddons dbusaddons doctools ecm i18n iconthemes \
		itemviews jobwidgets kcmutils kio notifications service \
		solid wayland widgetsaddons xmlgui
USE_QT=		concurrent core dbus gui network qml quick testlib widgets x11extras xml \
		buildtools_build qmake_build
USE_XORG=	ice sm x11 xext xtst
USE_LDCONFIG=	${QT_QMLDIR}/org/kde/kdeconnect

.include <bsd.port.mk>
