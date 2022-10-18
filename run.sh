#!/usr/bin/env bash
# 定义应用组名
group_name='niyihua'
# 定义应用名称
app_name='myapp'
# 定义应用版本
app_version='1.0.1'
# 定义应用环境
profile_active='test'
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
docker run  -p 89:89 --net ${network} --name ${app_name} \
-e 'spring.profiles.active'=${profile_active} \
-d ${group_name}/${app_name}:${app_version}
echo '----start container----'

docker run --name mysql --net myapp-network -p 3308:3306  -v /home/mysql01/datadir:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123456 -d mysql