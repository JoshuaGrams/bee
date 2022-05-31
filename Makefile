all:
	dendry make-html
	cp out/html/* ./
	zip game.zip *.js *.html *.css
	html-inline index.html > bee.html
#deploy:
	#butler push game.zip red-autumn/pageant:win-mac-linux
