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
	git add .
	git commit -m "."
	git push

initial:
	wget $(WGETOPTIONS) https://water.lsbu.ac.uk/water

%.md: %.0.md history.txt
	python replacer.py < $< > $@
