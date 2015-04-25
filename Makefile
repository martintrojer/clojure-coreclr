.PHONY:	connect

connect:
	docker run --rm -i -t clojure-coreclr -t /bin/bash

build:
	docker build --rm -t clojure-coreclr .
