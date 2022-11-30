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

commit:
	git add -A .
	git commit -m 'Added markdown file $(MARKDOWN)'
	pandoc --from markdown --to html $< -o $@