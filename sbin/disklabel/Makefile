
PYTHON_PROG = disklabel-edit
PYTHON_SRCS = disklabel.py

$(PYTHON_PROG)::
	cp -f $(PYTHON_SRCS) $@

include ../../Makefile.common

install::
ifdef PYTHON_PROG
	$(INSTALL_PROG) $(PYTHON_PROG) $(DESTDIR)$(sbindir)/$(PYTHON_PROG)
endif

clean::
	rm -f $(PYTHON_PROG)
