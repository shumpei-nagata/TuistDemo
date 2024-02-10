.PHONY: setup
setup:
	. $(shell brew --prefix asdf)/libexec/asdf.sh
	-asdf plugin add tuist
	asdf install