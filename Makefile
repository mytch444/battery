BINDIR?= /usr/local/bin
BATTERY=battery
LOWBATTERY=lowbatteryd

install:
	install -Dm 755 $(BATTERY) $(BINDIR)/$(BATTERY)
	install -Dm 755 $(LOWBATTERY) $(BINDIR)/$(LOWBATTERY)

uninstall:
	rm $(BINDIR)/$(BATTERY)
	rm $(BINDIR)/$(LOWBATTERY)
