PANDOC_OPTIONS = --template templates/default.html \
	--standalone \
	--self-contained \
	--number-sections \
	-t html5

DOCS = docs/index.html

docs/%.html: %.org templates/default.html
	mkdir -p docs
	pandoc $(PANDOC_OPTIONS) -o $@ $<

docs: $(DOCS)

.PHONY: clean
clean:
	rm -r docs/

