docker-build :
	docker build -t frank/test:8-wheezy .
docker-run :
	docker run -d -p 3000:3000  --name test frank/test:8-wheezy
docker-exec :
	docker exec -it test bash
docker-rm :
	docker rm -f test