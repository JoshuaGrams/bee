all:
	dendry make-html
	cp out/html/* ./
	zip game.zip *.js *.html *.css
	html-inline index.html > bee.html
deploy:
	git add bee.html
	git commit -m "update game file"
	git push
