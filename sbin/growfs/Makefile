#	@(#)Makefile	8.8 (Berkeley) 6/21/2000
#
# $TSHeader: src/sbin/growfs/Makefile,v 1.4 2000/12/05 19:45:24 tomsoft Exp $
# $FreeBSD: src/sbin/growfs/Makefile,v 1.4 2001/12/04 02:19:47 obrien Exp $
# $OpenBSD: Makefile,v 1.7 2007/07/17 19:27:26 millert Exp $
#

PROG=   growfs
SRCS=   growfs.c
MAN=	growfs.8

#CFLAGS+=-Wall

DPADD=	${LIBUTIL}
LDADD=	-lutil -lbsd -lport -L../../lib/port

#.if defined(GFSDBG)
#SRCS+=  debug.c
#CFLAGS+=-DFS_DEBUG
#.endif

include ../../Makefile.common
