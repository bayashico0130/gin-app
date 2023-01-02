gen: docker-gen-down docker-gen-up fmt

app: docker-down test vet fmt docker-up

chimera: gen app

# Go
test:
	go test -v ./...

vet:
	go vet ./...

fmt:
	go fmt ./...

# Docker
docker-down:
	docker-compose -f docker-compose.yml down

docker-up:
	docker-compose -f docker-compose.yml up

docker-gen-down:
	docker-compose -f docker-compose.gen.yml down

docker-gen-up:
	docker-compose -f docker-compose.gen.yml up
