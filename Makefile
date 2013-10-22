EXT := ext/test-more-bash

.PHONY: test
test: $(EXT)
	prove $(PROVEOPT:%=% )test/

EXT:
	git submodule update --init --recursive
