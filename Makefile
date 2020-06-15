PREFIX?=/usr/local

all: youtube-dl-parallel

install: all
	install -Dm755 youtube-dl-parallel $(PREFIX)/bin/youtube-dl-parallel 

clean:
	@:

uninstall:
	$(RM) $(PREFIX)/bin/youtube-dl-parallel

.PHONY: all install clean uninstall
