# playerctl_systray Makefile

PREFIX ?= $(HOME)/.local

install:
	mkdir -p $(PREFIX)/bin
	mkdir -p $(PREFIX)/share/applications
	install -Dm755 playerctl_systray $(PREFIX)/bin/playerctl_systray
	install -Dm644 playerctl_systray.desktop $(PREFIX)/share/applications/playerctl_systray.desktop

remove:
	rm -f $(PREFIX)/bin/playerctl_systray
	rm -f $(PREFIX)/share/applications/playerctl_systray.desktop

.PHONY: install remove
