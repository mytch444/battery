BINDIR?= /usr/local/bin
BATTERY=battery
LOWBAT=lowbatteryd
LOWBATCONF=lowbatteryd.conf
SHOWBATTERY=showbattery

install:
	install -Dm 755 $(BATTERY) $(BINDIR)/$(BATTERY)
	install -Dm 755 $(SHOWBATTERY) $(BINDIR)/$(SHOWBATTERY)
	install -Dm 755 $(LOWBAT) $(BINDIR)/$(LOWBAT)
	install -Dm 755 $(LOWBATCONF) /etc/lowbatteryd

uninstall:
	rm $(BINDIR)/$(BATTERY)
	rm $(BINDIR)/$(LOWBATTERY)
	rm $(BINDIR)/$(SHOWBATTERY)
	rm /etc/lowbatteryd
