FROM ewertonsolitto/fullcycle

COPY /go /go/src

WORKDIR /go/src

ENTRYPOINT go run main.go