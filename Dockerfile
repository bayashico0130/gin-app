FROM golang:1.23 AS build
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN go build -a -installsuffix cgo -o chimera /app/main.go

FROM ubuntu AS runtime
WORKDIR /app
ENV GIN_MODE=debug
COPY --from=build /app/chimera .
EXPOSE 8080/tcp
CMD ["/app/chimera"]
