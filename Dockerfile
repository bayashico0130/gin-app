FROM golang:1.15 AS build
WORKDIR /go/src
COPY pkg/server ./pkg/server
COPY main.go .

ENV CGO_ENABLED=0
RUN go get -d -v ./...

RUN go build -a -installsuffix cgo -o chimera .

FROM scratch AS runtime
ENV GIN_MODE=release
COPY --from=build /go/src/chimera ./
EXPOSE 8080/tcp
ENTRYPOINT ["./chimera"]
