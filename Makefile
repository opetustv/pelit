# Makefile for pelit.opetus.tv

.PHONY: serve build update default

serve:
	hugo server

clean:
	rm -fr public/*

build: clean
	hugo

update: build
	rsync -av --delete public/ otv1:/srv/pelit.opetus.tv/www/

default: serve
