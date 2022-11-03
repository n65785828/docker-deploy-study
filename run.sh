#!/usr/bin/env bash
# 定义应用组名
group_name='niyihua'
# 定义应用名称
app_name='myapptomcat'
# 定义应用版本
app_version='1.0.1'
# 定义docker网络
network='myapp-network'
echo '----copy jar----'
docker stop ${app_name}
echo '----stop container----'
docker rm ${app_name}
echo '----rm container----'
docker rmi ${group_name}/${app_name}:${app_version}
echo '----rm image----'
# 打包编译docker镜像
docker build -t ${group_name}/${app_name}:${app_version} .
echo '----build image----'
docker run  -p 8080:8080 --net ${network} --name ${app_name} \
-d ${group_name}/${app_name}:${app_version}
echo '----start container----'