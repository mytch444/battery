BINDIR?= /usr/local/bin
BATTERY=battery
LOWBATTERY=lowbattery
SHOWBATTERY=showbattery

install:
	install -Dm 755 $(BATTERY) $(BINDIR)/$(BATTERY)
	install -Dm 755 $(LOWBATTERY) $(BINDIR)/$(LOWBATTERY)
	install -Dm 755 $(SHOWBATTERY) $(BINDIR)/$(SHOWBATTERY)

uninstall:
	rm $(BINDIR)/$(BATTERY)
	rm $(BINDIR)/$(LOWBATTERY)
