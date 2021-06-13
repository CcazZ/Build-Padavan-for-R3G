#!/bin/bash

############################################################
### 修改默认一些参数
############################################################
USER_NAME="admin"                       # 用户名 admin
USER_PASSWORD=$USER_NAME                # 用户密码 admin
LAN_IP="192.168.22"                     # lan 地址 192.168.3.1 一定别写后面的 .1
WIFI_PASSWORD="12345678"                # wifi密码，切记密码最少8位 admin
VERSION_TIME=$(date "+%Y%m%d")          # 自动时间更新时版本号: 20200320
DEFAULT_PATH="./user/shared/defaults.h" # 默认文件配置目录

echo '修改用户名'
sed -i 's/#define\s*SYS_USER_ROOT\s*"admin"/#define  SYS_USER_ROOT     "'$USER_NAME'"/g' $DEFAULT_PATH

echo '修改密码'
sed -i 's/#define\s*DEF_ROOT_PASSWORD\s*"admin"/#define  DEF_ROOT_PASSWORD     "'$USER_PASSWORD'"/g' $DEFAULT_PATH

echo "修改Lan ip"
sed -i "s/192.168.2/$LAN_IP/g" $DEFAULT_PATH

echo "修改Wif密码"
sed -i "s/1234567890/$WIFI_PASSWORD/g" $DEFAULT_PATH

echo "更新版本号时间
sed -i "s/FIRMWARE_BUILDS_REV=[0-9]*/FIRMWARE_BUILDS_REV=$VERSION_TIME/g" ./versions.inc
