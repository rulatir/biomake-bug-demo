build/indirectly-dependent: build/random64
	cp $< $@

build/random64: build/randomstuff
	base64 < $< > $@

build/randomstuff: FORCE
	dd count=1 if=/dev/urandom of=$@

FORCE:
