DESTDIR?= /usr/bin
CONFDIR?= /etc
BATTERY=battery
LOWBAT=lowbatteryd
LOWBATCONF=lowbatteryd.conf
SHOWBATTERY=showbattery

install:
	install -Dm 755 $(BATTERY) $(DESTDIR)/$(BATTERY)
	install -Dm 755 $(LOWBAT) $(DESTDIR)/$(LOWBAT)
	install -Dm 755 $(LOWBATCONF) $(CONFDIR)/$(LOWBATCONF)

install-rc: 
	install -Dm 755 lowbatteryd-init /etc/rc.d/lowbatteryd

install-show:
	install -Dm 755 $(SHOWBATTERY) $(DESTDIR)/$(SHOWBATTERY)

uninstall:
	rm $(DESTDIR)/$(BATTERY)
	rm $(DESTDIR)/$(LOWBATTERY)
	rm $(DESTDIR)/$(SHOWBATTERY)
	rm $(CONFDIR)/$(LOWBATCONF)
