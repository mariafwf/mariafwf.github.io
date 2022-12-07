MARKDOWN=$(shell find . -iname "*.md")

HTML=$(MARKDOWN:.md=.html)

.PHONY = all clean new

all: $(HTML)

%.html: %.md
	pandoc --from markdown --to html $< -o $@

clean:
	rm $(HTML)

commit: all
	rm $(MARKDOWN)
	git add -A .
	git commit -m 'Added entry $(MARKDOWN)'
	
DIR :=

entry:
	for file in ./entries ; do \
		echo "Hello" $${file} ; \
	done

