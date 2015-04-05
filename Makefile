DESTDIR?=
PREFIX?=/usr
CONFDIR?=${PREFIX}/etc
BINDIR?=${PREFIX}/bin

lowbatteryd.set: lowbatteryd
	@echo "Building lowbatteryd.set"
	@echo "#!/bin/sh" > lowbatteryd.set
	@echo >> lowbatteryd.set
	@echo "CONF=${CONFDIR}/lowbatteryd.conf" >> lowbatteryd.set
	@echo >> lowbatteryd.set
	@cat lowbatteryd >> lowbatteryd.set

install: battery lowbatteryd.set lowbatteryd.conf
	install -Dm 755 battery ${DESTDIR}${BINDIR}/battery
	install -Dm 755 lowbatteryd.set ${DESTDIR}${BINDIR}/lowbatteryd
	install -Dm 755 lowbatteryd.conf ${DESTDIR}${CONFDIR}/lowbatteryd.conf

uninstall:
	rm ${DESTDIR}${BINDIR}/battery
	rm ${DESTDIR}${BINDIR}/lowbatteryd
	rm ${DESTDIR}${CONFDIR}/lowbatteryd.conf
