# svc-base

## 构建

```shell
docker build -t registry.cn-beijing.aliyuncs.com/zizai/svc-base:8-alpine .
docker run -d -p 3000:3000  --name svc-base registry.cn-beijing.aliyuncs.com/zizai/svc-base:8-alpine
docker push registry.cn-beijing.aliyuncs.com/zizai/svc-base:8-alpine
```