.PHONY: all
all:
	(cd zlib; ./configure)
	$(MAKE) -C zlib all
	$(MAKE) -C fastboot all

.PHONY: clean
clean:
	$(MAKE) -C zlib clean
	$(MAKE) -C fastboot clean
