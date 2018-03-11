NAME=port-wrapper
PREFIX?=/usr/local
BINDIR?=$(PREFIX)/bin
SHAREDIR?=$(PREFIX)/share/$(NAME)

INSTALL ?= /usr/bin/install
SED 	?= /usr/bin/sed

install:
	$(INSTALL) -d $(DESTDIR)$(SHAREDIR)/zsh/site-functions \
			$(DESTDIR)$(BINDIR)
	$(INSTALL) functions/* $(DESTDIR)$(SHAREDIR)/zsh/site-functions
	$(INSTALL) scripts/* $(DESTDIR)$(BINDIR)

	$(INSTALL) -m 664 README.md $(DESTDIR)$(SHAREDIR)
