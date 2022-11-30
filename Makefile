# Find all markdown files
MARKDOWN=$(shell find . -iname "*.md")

# Form all 'html' counterparts
HTML=$(MARKDOWN:.md=.html)

.PHONY = all tar clean

all: $(HTML)

%.html: %.md
	pandoc --from markdown --to html $< -o $@

clean:
	rm $(HTML)

commit: all
	git add -A .
	git commit -m 'Added entry $(MARKDOWN)'