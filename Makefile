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

obtain:
	wget $(WGETOPTIONS) https://water.lsbu.ac.uk/water
