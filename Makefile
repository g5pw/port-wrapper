NAME=port-wrapper
PREFIX?=/usr/local
BINDIR?=$(PREFIX)/bin
SHAREDIR?=$(PREFIX)/share/$(NAME)

INSTALL ?= /usr/bin/install
SED 	?= /usr/bin/sed

install:
	$(INSTALL) -d $(DESTDIR)$(SHAREDIR)/functions \
			$(DESTDIR)$(BINDIR)
	$(INSTALL) functions/* $(DESTDIR)$(SHAREDIR)/functions
	$(INSTALL) scripts/* $(DESTDIR)$(BINDIR)

	$(INSTALL) port-wrapper.zsh $(DESTDIR)$(SHAREDIR)
	$(SED) -i "" 's|_SHAREDIR_|$(SHAREDIR)|' $(DESTDIR)$(SHAREDIR)/port-wrapper.zsh

	$(INSTALL) -m 664 README.md $(DESTDIR)$(SHAREDIR)
