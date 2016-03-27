.PHONY: all create start stop clean

all: start

create:
	docker-machine create \
		--driver virtualbox \
		--virtualbox-memory "2048" \
		dev

start: create
	docker-machine start dev

stop:
	-docker-machine stop dev

clean: stop
	docker-machine rm -f dev
