NS = seopanel
VERSION ?= 4.11.0

REPO = seopanel

default: build

build:
	docker build -t $(NS)/$(REPO):$(VERSION) -f Dockerfile .

push:
	docker push $(NS)/$(REPO):$(VERSION)

