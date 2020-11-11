#vars
IMAGENAME=hello-world
REPO=flask
IMAGEFULLNAME=${REPO}/${IMAGENAME}:${KUBECTL_VERSION}

.PHONY: help build push all

help:
	    @echo "Makefile commands:"
	    @echo "build"
	    @echo "push"
	    @echo "all"

.DEFAULT_GOAL := all

build:
	    @docker build -t ${IMAGEFULLNAME} .

push:
	    @docker push ${IMAGEFULLNAME}

all: build push
