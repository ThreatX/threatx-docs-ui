

basedir ?= $(shell pwd)

npx = $(basedir)/node_modules/.bin/npx


.PHONY: install
install:
	npm install --quiet --no-progress --cache=.cache/npm

.PHONY: lint
lint:
	node_modules/.bin/gulp lint

.PHONY: bundle
bundle:
	node_modules/.bin/gulp bundle

.PHONY: pack
pack:
	node_modules/.bin/gulp pack

.PHONY: deploy
deploy:
	node_modules/.bin/gulp preview:build
	rm -rf public/_/{helpers,layouts,partals}
