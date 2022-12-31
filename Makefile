SHELL := /bin/bash

default: help

.PHONY: bootstrap
bootstrap: ## Set up environment for hacking
	@echo "✅ Ready"

build: index.html vanilla.css ## Build site for deployment
	@# No real build process right now, but it's nice to have the command.
	mkdir -p build
	cp index.html build/.
	cp vanilla.css build/.

.PHONY: clean
clean: ## Clean build artifacts
	rm -rf build

# via https://gist.github.com/prwhite/8168133
help: ## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
