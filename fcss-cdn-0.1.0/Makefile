prefix = /usr/local

all: src/fcss-cdn

src/shebang: src/fcss-cdn.sh
#	@echo "CFLAGS=$(CFLAGS)" | \
#	fold -s -w 70 | \
#	sed -e 's/^/# /'
#	$(CC) $(CPPFLAGS) $(CFLAGS) $(LDCFLAGS) -o $@ $^

install: src/fcss-cdn
	install -D src/fcss-cdn \
	$(DESTDIR)$(prefix)/bin/fcss-cdn

clean:
	-rm -f src/fcss-cdn

distclean: clean

uninstall:
	-rm -f $(DESTDIR)$(prefix)/bin/fcss-cdn

.PHONY: all install clean distclean uninstall
