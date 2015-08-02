# Written by Sebastian Pipping <sebastian@pipping.org>
# Licensed under CC0 1.0 Public Domain Dedication

PDF = gentoo-workshop-troisdorf-2015-08-01-paketierung.pdf

all: $(PDF)

$(PDF): rgb45347b.ppm

%.pdf: %.pin
	pinpoint -o "$@" "$<"

clean:
	$(RM) *.pdf

.PHONY: all clean
