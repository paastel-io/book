MDBOOK 	:= mdbook
OUTPUT 	:= book
DOMAIN	:= book.paastel.io
RSYNC	:= openrsync

watch:
	${MDBOOK} serve --open

build:
	${MDBOOK} build

compress:
	find ${OUTPUT}/ -type f \
		\( -name *.woff2 -o -name *.ttf -o -name *.css -o -name *.js -o -name *.txt -o -name *.svg \) \
		-exec gzip -kf {} \;

send:
	${RSYNC} -a ${OUTPUT}/ ${SRV}:/var/www/htdocs/${DOMAIN}

fmt:
	dprint fmt "src/**/*.md" "${OUTPUT}/**/*.{html,css,json}" book.toml

clean:
	rm -rf ${OUTPUT}

release: clean build fmt compress send
