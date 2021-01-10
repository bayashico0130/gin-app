gen :
	docker-compose -f docker-compose.gen.yml down
	docker-compose -f docker-compose.gen.yml up

app :
	docker-compose -f docker-compose.yml down
	docker-compose -f docker-compose.yml up

chimera :
	docker-compose -f docker-compose.gen.yml down
	docker-compose -f docker-compose.yml down
	docker-compose -f docker-compose.gen.yml up
	docker-compose -f docker-compose.yml up
