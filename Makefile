SHELL := /bin/bash


# UID to create/run container user as. Default is your own UID
USER_ID ?= $(shell id -u)

DIR ?= $(shell pwd)


# Run the specified browser

.PHONY: firefox
firefox:
	export BROWSER=$@ ; export USER_ID=${USER_ID} ; docker-compose run browse


# Gain shell into designated container to debug

.PHONY: debug_firefox
debug_firefox:
	export BROWSER=firefox ; export USER_ID=${USER_ID} ; docker-compose run dev


# Force an image for a browser to be rebuilt. Must define BROWSER before call. Example:
# BROWSER=firefox make rebuild

.PHONY: rebuild
rebuild:
	docker-compose build


# Add desktop icon for docker container. Must define BROWSER before call. Example:
# BROWSER=firefox make install

.PHONY: install
install:
	cd utils; ./install.sh ${BROWSER} ${DIR}
