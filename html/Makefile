run: clean
	docker-compose -p vinarija build &&\
	docker-compose -p vinarija up -d mysql &&\
	./wait-for-mysql &&\
	docker-compose -p vinarija up -d &&\
	docker-compose -p vinarija logs -f

clean:
	docker-compose -p vinarija kill;\
	docker-compose -p vinarija down --remove-orphans;\
	exit 0