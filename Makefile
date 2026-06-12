# playerctl_systray Makefile

PREFIX ?= $(HOME)/.local

install:
	mkdir -p $(PREFIX)/bin
	install -Dm755 playerctl_systray $(PREFIX)/bin/playerctl_systray

remove:
	rm -f $(PREFIX)/bin/playerctl_systray

.PHONY: install remove
