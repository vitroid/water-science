WGETOPTIONS=--recursive \
	--page-requisites \
	--html-extension \
	--convert-links \
	--restrict-file-names=unix \
	--domains water.lsbu.ac.uk \
	--no-parent \
	 --wait=5 \
	 --no-check-certificate


update:
	-wget $(WGETOPTIONS) --no-clobber https://water.lsbu.ac.uk/water
# --no-clobber avoids overwriting the existing file.
	cp history.txt @; date +'* %Y-%m-%d' | cat - @ > history.txt
	make README.md

push:
	git add .
	git commit -m "."
	git push


initial:
	wget $(WGETOPTIONS) https://water.lsbu.ac.uk/water

%.md: %.0.md history.txt
	python replacer.py < $< > $@


docs/ja:
	-mkdir docs/ja
	-mkdir docs/ja/water
	-cd docs/ja; ln -s ../../water/images; ln -s ../../water/enztech; ln -s ../../water/pdb; ln -s ../../water/files

docs/ja/%.html: docs/%.html
	python translate.py JA < $< > $@

ja-all: docs/ja
	ls docs/*.html docs/water/*.html | sed -e 's@^docs@docs/ja@' | xargs make -k

