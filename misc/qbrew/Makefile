# Created by: David Johnson <david@usermode.org>
# $FreeBSD$

PORTNAME=	qbrew
PORTVERSION=	0.4.1
PORTREVISION=	4
CATEGORIES=	misc
MASTER_SITES=	http://www.usermode.org/code/

MAINTAINER=	david@usermode.org
COMMENT=	Homebrewer's recipe calculator

USES=		qmake qt:4
USE_QT=		moc_build uic_build rcc_build xml gui
PORTDOCS=	*

QMAKE_ARGS=	CONFIG+="configure"
QMAKE_ENV+=	BINDIR="${PREFIX}/bin" \
		DATADIR="${DATADIR}" \
		DOCDIR="${DOCSDIR}"

OPTIONS_DEFINE=	DOCS

post-install:
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/qbrew

.include <bsd.port.mk>
