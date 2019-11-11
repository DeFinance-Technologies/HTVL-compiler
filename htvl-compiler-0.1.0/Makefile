prefix = /usr/local

all: src/htvl-compiler

src/shebang: src/htvl-compiler.sh
#	@echo "CFLAGS=$(CFLAGS)" | \
#	fold -s -w 70 | \
#	sed -e 's/^/# /'
#	$(CC) $(CPPFLAGS) $(CFLAGS) $(LDCFLAGS) -o $@ $^

install: src/htvl-compiler
	install -D src/htvl-compiler \
	$(DESTDIR)$(prefix)/bin/htvl-compiler

clean:
	-rm -f src/htvl-compiler

distclean: clean

uninstall:
	-rm -f $(DESTDIR)$(prefix)/bin/htvl-compiler

.PHONY: all install clean distclean uninstall
