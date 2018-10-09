# svc-base

## 构建

```shell
docker build -t registry.cn-beijing.aliyuncs.com/zizai/svc-base:8-alpine .
docker run -d -p 3000:3000  --name svc-base registry.cn-beijing.aliyuncs.com/zizai/svc-base:8-alpine
docker push registry.cn-beijing.aliyuncs.com/zizai/svc-base:8-alpine
```


https://gist.github.com/vovimayhem/6437c2f03b654e392ccf3e9903eba6af