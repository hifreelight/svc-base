docker-build :
	docker build -t registry.cn-beijing.aliyuncs.com/zizai/svc-base:8-alpine .
docker-run :
	docker run -d -p 3000:3000  --name svc-base registry.cn-beijing.aliyuncs.com/zizai/svc-base:8-alpine
docker-exec :
	docker exec -it svc-base sh
docker-rm :
	docker rm -f svc-base