gen: docker-gen-down docker-gen-up fmt

app: docker-down test vet fmt docker-up

chimera: docker-gen-down docker-down test docker-gen-up fmt docker-up

# Go
test:
	go test -v ./...

vet:
	go vet -v ./...

fmt:
	go fmt -v ./...

# Docker
docker-down:
	docker-compose -f docker-compose.yml down

docker-up:
	docker-compose -f docker-compose.yml up

docker-gen-down:
	docker-compose -f docker-compose.gen.yml down

docker-gen-up:
	docker-compose -f docker-compose.gen.yml up
