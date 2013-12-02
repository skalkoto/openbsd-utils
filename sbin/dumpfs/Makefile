#	$OpenBSD: Makefile,v 1.4 2011/02/28 00:12:19 halex Exp $

PROG=	dumpfs
SRCS=	dumpfs.c
MAN=	dumpfs.8

LDADD=  -lutil -lbsd -lport -L../../lib/port
DPADD=  ${LIBUTIL}

include ../../Makefile.common
