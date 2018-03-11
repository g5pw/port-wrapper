NAME=port-wrapper
PREFIX?=/usr/local
BINDIR?=$(PREFIX)/bin
SHAREDIR?=$(PREFIX)/share/

INSTALL ?= /usr/bin/install
SED 	?= /usr/bin/sed

install:
	$(INSTALL) -d $(DESTDIR)$(SHAREDIR)/zsh/site-functions \
			$(DESTDIR)$(SHAREDIR)/$(NAME) \
			$(DESTDIR)$(BINDIR)
	$(INSTALL) functions/* $(DESTDIR)$(SHAREDIR)/zsh/site-functions
	$(INSTALL) scripts/* $(DESTDIR)$(BINDIR)

	$(INSTALL) -m 664 README.md $(DESTDIR)$(SHAREDIR)/$(NAME)/
