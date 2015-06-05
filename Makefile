BUILD_DIR := gen

# pandoc is a handy tool for converting between numerous text formats:
# http://johnmacfarlane.net/pandoc/installing.html
PANDOC := pandoc

# pandoc options
# Liberation fonts: http://en.wikipedia.org/wiki/Liberation_fonts
PANDOC_PDF_OPTS := --toc --chapters --base-header-level=1 --number-sections --variable documentclass=book
PANDOC_PDF_KINDLE_OPTS := --toc --chapters --base-header-level=1 --number-sections --variable documentclass=book --variable classoption=a5paper --variable lang=brazilian --include-in-header kindle-pdf-header.tex
PANDOC_EBOOK_OPTS := --webtex --toc --epub-stylesheet=epub.css --epub-cover-image=cover.jpg --base-header-level=1

# download kindlegen from http://www.amazon.com/gp/feature.html?ie=UTF8&docId=1000765211
KINDLEGEN := kindlegen
KINDLEGEN_OPTS :=

MARKDOWN := $(filter-out README.md, $(wildcard *.md))
PDF := $(patsubst %.md,$(BUILD_DIR)/%.pdf,$(MARKDOWN))
EBOOK := $(patsubst %.md,$(BUILD_DIR)/%.epub,$(MARKDOWN))
DOCX := $(patsubst %.md,$(BUILD_DIR)/%.docx,$(MARKDOWN))
WIKI := $(patsubst %.md,$(BUILD_DIR)/%.mediawiki,$(MARKDOWN))
HTML := $(patsubst %.md,$(BUILD_DIR)/%.html,$(MARKDOWN))

.PHONY: all checkdirs pdf ebook doc wiki html clean

all: checkdirs $(PDF) $(EBOOK) $(DOCX) $(WIKI) $(HTML)

checkdirs: $(BUILD_DIR)

pdf: checkdirs $(PDF)

ebook: checkdirs $(EBOOK)

doc: checkdirs $(DOCX)

wiki: checkdirs $(WIKI)

html: checkdirs $(HTML)

$(BUILD_DIR):
	@[ -d $@ ] || mkdir -p $@

# generate PDF
$(BUILD_DIR)/%.pdf: %.md
	$(PANDOC) $(PANDOC_PDF_OPTS) --self-contained -o $@ $<
	$(PANDOC) $(PANDOC_PDF_KINDLE_OPTS) --self-contained -o $(@D)/kindle-$(@F) $<

# generate both iBooks (.epub) and then Kindle (.mobi) formats
$(BUILD_DIR)/%.epub: %.md
	$(PANDOC) $(PANDOC_EBOOK_OPTS) --self-contained -o $@ $<
	$(KINDLEGEN) $(KINDLEGEN_OPTS) $@ > /dev/null

# generate Microsoft Word documents (.docx)
$(BUILD_DIR)/%.docx: %.md
	$(PANDOC) --self-contained -o $@ $<

# generate files suitable for pasting into mediawiki
$(BUILD_DIR)/%.mediawiki: %.md
	$(PANDOC) -t mediawiki --self-contained -o $@ $<

# generate HTML files
$(BUILD_DIR)/%.html: %.md
	$(PANDOC) --self-contained -o $@ $<

clean:
	@rm -rf $(BUILD_DIR)

# EXPERIMENTAL! Publish to our corporate Wiki (using the script mwupdate)
# WARNING! This is a one-way process, no changes are pulled from the wiki.
# If you're now careful, you'll override somebody else's edits.
#
# Usage: make DocumentName.wiki
# If the DocumentName page doesn't exist, it will be created.
%.wiki: $(BUILD_DIR)/%.mediawiki
	@cat $< | mwupdate $(patsubst %.wiki,%,$@)
