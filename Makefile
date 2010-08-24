
###############################################################################
#
# mod_gearman - distribute checks with gearman
#
# Copyright (c) 2010 Sven Nierlein
#
###############################################################################

SUBDIRS = neb_module
MAKE    = make

all: mod_gearman

mod_gearman:
	cd neb_module && aclocal && autoheader && automake -a && autoconf && ./configure && make

all:
	@for i in $(SUBDIRS); do \
	echo "makeing all in $$i..."; \
	(cd $$i; $(MAKE) all); done


clean:
	@for i in $(SUBDIRS); do \
	echo "cleaning in $$i..."; \
	(cd $$i; $(MAKE) clean); done


distclean:
	@for i in $(SUBDIRS); do \
	echo "dist cleaning in $$i..."; \
	(cd $$i; $(MAKE) distclean); done
