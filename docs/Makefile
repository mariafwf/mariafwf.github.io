MARKDOWN=$(shell find . -iname "*.md")

HTML=$(MARKDOWN:.md=.html)

.PHONY = all clean new

all: $(HTML)

%.html: %.md
	pandoc --from markdown --to html $< -o $@

clean:
	rm $(HTML)

commit: all
#	rm $(MARKDOWN)
	git add -A .
	git commit -m 'Added $(basename $(MARKDOWN))'
	
NEWENTRY:=(<div class="entry"><a href="entries/littlelife.html"><span class="hyperspan"></span></a><span>A Little Life</span><br /><br /><span>by Hanya Yanagihara</span></div></div>)

append:
	NEWENTRY >> index.html

