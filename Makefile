.PHONY: all create start restart stop clean

all: start

create:
	-docker-machine create \
		--driver virtualbox \
		--virtualbox-cpu-count "2" \
		--virtualbox-memory "5120" \
		dev

start: create
	docker-machine start dev

restart: create
	docker-machine restart dev

stop:
	-docker-machine stop dev

clean: stop
	docker-machine rm -f dev
