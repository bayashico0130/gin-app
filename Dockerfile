FROM golang:1.15 AS build
WORKDIR /go/src/github.com/bayashico0130/gin-app

ARG GIT_USER
ARG GIT_PASS

ENV CGO_ENABLED=0
RUN git clone https://${GIT_USER}:${GIT_PASS}@github.com/bayashico0130/gin-app /go/src/github.com/bayashico0130/gin-app
RUN go get -d -v -u ./...

RUN go build -a -installsuffix cgo -o chimera github.com/bayashico0130/gin-app

FROM scratch AS runtime
ENV GIN_MODE=debug
COPY --from=build /go/src/github.com/bayashico0130/gin-app/chimera ./
EXPOSE 8080/tcp
ENTRYPOINT ["./chimera"]
