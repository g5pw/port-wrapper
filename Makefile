NAME=port-wrapper
PREFIX?=/usr/local
BINDIR?=$(PREFIX)/bin
SHAREDIR?=$(PREFIX)/share/$(NAME)

INSTALL ?= /usr/bin/install
SED 	?= /usr/bin/sed

install:
	$(INSTALL) -d $(DESTROOT)$(SHAREDIR)/functions \
			$(DESTROOT)$(BINDIR)
	$(INSTALL) functions/* $(DESTROOT)$(SHAREDIR)/functions
	$(INSTALL) scripts/* $(DESTROOT)$(BINDIR)

	$(INSTALL) port-wrapper.zsh $(DESTROOT)$(SHAREDIR)
	$(SED) -i "" 's|_SHAREDIR_|$(SHAREDIR)|' $(DESTROOT)$(SHAREDIR)/port-wrapper.zsh

	$(INSTALL) -m 664 README.md $(DESTROOT)$(SHAREDIR)
