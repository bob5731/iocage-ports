# Created by: Nikolay Korotkiy <sikmir@gmail.com>
# $FreeBSD$

PORTNAME=	gpxsee
PORTVERSION=	6.2
CATEGORIES=	graphics geography

MAINTAINER=	sikmir@gmail.com
COMMENT=	GPS log file viewer and analyzer

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/licence.txt

USES=		qmake:outsource desktop-file-utils qt:5 shared-mime-info
USE_QT=		buildtools_build core gui network opengl printsupport \
		sql sql-sqlite3_run widgets
USE_GL=		gl

USE_GITHUB=	yes
GH_ACCOUNT=	tumic0
GH_PROJECT=	GPXSee

OPTIONS_DEFINE=	NLS TIFF
OPTIONS_DEFAULT=	TIFF
OPTIONS_SUB=	yes
NLS_USE=	QT=linguisttools_build
NLS_USES=	gettext-runtime qt:5
TIFF_DESC=	Support for TIFF
TIFF_USES=	qt:5
TIFF_USE=	QT=imageformats_run

do-patch:
	@${REINPLACE_CMD} -e "s|/usr/share/gpxsee|${DATADIR}|" ${WRKSRC}/src/config.h

pre-build-NLS-on:
	${LRELEASE} ${WRKSRC}/${PORTNAME}.pro

do-install:
	${INSTALL_PROGRAM} ${BUILD_WRKSRC}/GPXSee ${STAGEDIR}${PREFIX}/bin/${PORTNAME}
	@${MKDIR} ${STAGEDIR}${DATADIR}/maps
	${INSTALL_DATA} ${WRKSRC}/pkg/maps/* ${STAGEDIR}${DATADIR}/maps
	@${MKDIR} ${STAGEDIR}${DATADIR}/csv
	${INSTALL_DATA} ${WRKSRC}/pkg/csv/* ${STAGEDIR}${DATADIR}/csv
	${INSTALL_DATA} ${WRKSRC}/icons/${PORTNAME}.png ${STAGEDIR}${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/pkg/${PORTNAME}.desktop ${STAGEDIR}${PREFIX}/share/applications
	@${MKDIR} ${STAGEDIR}${PREFIX}/share/mime/packages
	${INSTALL_DATA} ${WRKSRC}/pkg/${PORTNAME}.xml ${STAGEDIR}${PREFIX}/share/mime/packages

do-install-NLS-on:
	@${MKDIR} ${STAGEDIR}${DATADIR}/translations
	${INSTALL_DATA} ${WRKSRC}/lang/*.qm ${STAGEDIR}${DATADIR}/translations

.include <bsd.port.mk>
