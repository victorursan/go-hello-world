FROM golang

RUN useradd -r -s /bin/false helloworld

RUN go get github.com/victorursan/go-hello-world
RUN go install github.com/victorursan/go-hello-world

ENTRYPOINT /go/bin/go-hello-world


EXPOSE 8484
