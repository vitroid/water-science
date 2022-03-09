WGETOPTIONS=--recursive \
	--page-requisites \
	--html-extension \
	--convert-links \
	--restrict-file-names=unix \
	--domains water.lsbu.ac.uk \
	--no-parent \
	 --wait=5 \


retry:
	wget $(WGETOPTIONS) --no-clobber https://water.lsbu.ac.uk/water
# --no-clobber avoids overwriting the existing file.
	cp history.txt @; date +'* %Y-%m-%d' | cat - @ > history.txt
	make README.md
     git all .
     git commit -m "."
     git push

initial:
	wget $(WGETOPTIONS) https://water.lsbu.ac.uk/water

%.md: %.0.md
	python replacer.py < $< > $@