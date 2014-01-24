#
# ufsutils Makefile
#

SUBDIRS = lib/port sbin/growfs sbin/tunefs sbin/dumpfs sbin/disklabel

clean_targets = $(addsuffix -clean,$(SUBDIRS))
install_targets = $(addsuffix -install,$(SUBDIRS))

all: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@

clean: $(clean_targets)

$(clean_targets):
	$(MAKE) -C $(subst -clean,,$@) clean

install: $(install_targets)

$(install_targets):
	$(MAKE) -C $(subst -install,,$@) install

.PHONY: all clean install $(SUBDIRS) $(clean_targets) $(install_targets)
