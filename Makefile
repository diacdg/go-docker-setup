get: 
	docker run --rm -v "$$PWD"/../../..\:/go/src -w /go/src/github.com/diacdg/go-docker-setup/cmd golang\:1.14 go get -d -v .
build:
	docker run --rm -v "$$PWD"/../../..\:/go/src -w /go/src/github.com/diacdg/go-docker-setup/cmd golang\:1.14 go build -o /go/src/server main.go
run:
	./../../../server

all: get build run
