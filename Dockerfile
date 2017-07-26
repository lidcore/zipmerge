FROM golang:alpine

WORKDIR /go/src/zipmerge

ADD . /go/src/zipmerge

ENV LDFLAGS="-static"

RUN go build
