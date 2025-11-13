watch:
	mdbook serve

build:
	mdbook build

compress:
	find book/ -type f \
		\( -name *.woff2 -o -name *.ttf -o -name *.css -o -name *.js -o -name *.txt -o -name *.svg \) \
		-exec gzip -kf {} \;

send:
	openrsync -a book/ ${SRV}:/var/www/htdocs/book.paastel.io

fmt:
	dprint fmt "src/**/*.md" "book/**/*.{html,css,json}" book.toml

clean:
	rm -rf book 

release: clean build fmt compress send
