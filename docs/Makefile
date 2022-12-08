MARKDOWN=$(shell find ../build -iname "*.md")

HTML=$(MARKDOWN:.md=.html)

.PHONY = all clean delete

all: $(HTML)

%.html: %.md
	pandoc --from markdown --to html $< -o $@

clean:
	rm $(HTML)

BOOKTITLE = 

add:
ifdef title
	echo "* [$(title) by $(author)](./$(file).html)" >> index.md
else
	echo "Usage: make title=<book title> author=<author name> file=<file name>""
endif

commit: all # delete
#	rm $(MARKDOWN)
	git add -A .
	git commit -m 'Added $(basename $(MARKDOWN))'