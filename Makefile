docs/index.html: Readme.org templates/default.html
	mkdir -p docs
	pandoc \
		--template templates/default.html \
		--standalone --self-contained  \
		--number-sections -t html5 \
		-o docs/index.html Readme.org
