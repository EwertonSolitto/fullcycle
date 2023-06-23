FROM golang:1.16.5-alpine3.14 as build

WORKDIR /go/src

COPY go/main.go /go/src
COPY go/go.mod /go/src

RUN go build main.go

FROM scratch

COPY --from=build /go/src/ /

ENTRYPOINT ["/main"]