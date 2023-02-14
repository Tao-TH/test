#! /bin/bash

cd $CODE_DIR
#编写镜像文件
cat >./Dockerfile << a
FROM alpine
RUN echo 构建时运行
CMD echo hello world
a
# 构建镜像
 docker build -t test2:v1 .
# 在容器中运行应用程序
docker run test2:v1

