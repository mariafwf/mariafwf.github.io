MARKDOWN=$(shell find ../build/new -iname "*.md")

HTML=$(MARKDOWN:.md=.html)

.PHONY = all clean delete

%.html: %.md
	pandoc --from markdown --to html $< -o $@

add: $(HTML)
ifdef title
	rm ../docs/index.html
	echo "* [$(title) by $(author)](./$(file).html)" >> index.md
	touch index.html
	pandoc --from markdown --to html index.md -o index.html
	mv $(HTML) ../docs
	mv index.html ../docs
	mv $(MARKDOWN) ./added
else
	echo "Usage: make title=<book title> author=<author name> file=<file name> commit"
endif

test: add
	python3 ../tests.py

commit: test
	git add ../docs
	git commit -m 'Add $(title) by $(author)'
	git push origin master