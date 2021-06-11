#!/bin/bash
############################################################
### Linux kernel configuration
############################################################
sed -i 's/CONFIG_FIRMWARE_INCLUDE_QOS=n/CONFIG_FIRMWARE_INCLUDE_QOS=y/g' .config

############################################################
### Userspace configuration
############################################################
#删除项
sed -i 's/CONFIG_FIRMWARE_INCLUDE_FTPD=y/CONFIG_FIRMWARE_INCLUDE_FTPD=n/g' .config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_SFTP=y/CONFIG_FIRMWARE_INCLUDE_SFTP=n/g' .config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_ARIA=y/CONFIG_FIRMWARE_INCLUDE_ARIA=n/g' .config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_ARIA_WEB_CONTROL=y/CONFIG_FIRMWARE_INCLUDE_ARIA_WEB_CONTROL=n/g' .config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_DOGCOM=y/CONFIG_FIRMWARE_INCLUDE_DOGCOM=n/g' .config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_NJIT_CLIENT=y/CONFIG_FIRMWARE_INCLUDE_NJIT_CLIENT=n/g' .config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_VLMCSD=y/CONFIG_FIRMWARE_INCLUDE_VLMCSD=n/g' .config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_TTYD=y/CONFIG_FIRMWARE_INCLUDE_TTYD=n/g' .config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_LRZSZ=y/CONFIG_FIRMWARE_INCLUDE_LRZSZ=n/g' .config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_NANO=y/CONFIG_FIRMWARE_INCLUDE_NANO=n/g' .config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_IPERF3=y/CONFIG_FIRMWARE_INCLUDE_IPERF3=n/g' .config

#集成项
sed -i 's/CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_SERVER=n/CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_SERVER=y/g' .config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_CLIENT=n/CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_CLIENT=y/g' .config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_CMD=n/CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_CMD=y/g' .config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_TUNSAFE=n/CONFIG_FIRMWARE_INCLUDE_TUNSAFE=y/g' .config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_WIREGUARD=n/CONFIG_FIRMWARE_INCLUDE_WIREGUARD=y/g' .config

#自定义项(先删除)
sed -i '/CONFIG_FIRMWARE_INCLUDE_MENTOHUST/d' .config #删除配置项MENTOHUST
sed -i '/CONFIG_FIRMWARE_INCLUDE_SCUTCLIENT/d' .config #删除配置项SCUTCLIENT
sed -i '/CONFIG_FIRMWARE_INCLUDE_SHADOWSOCKS/d' .config #删除配置项SS plus+
sed -i '/CONFIG_FIRMWARE_INCLUDE_SSSERVER/d' .config #删除配置项SS server
sed -i '/CONFIG_FIRMWARE_INCLUDE_DNSFORWARDER/d' .config #删除配置项DNSFORWARDER
sed -i '/CONFIG_FIRMWARE_INCLUDE_ADBYBY/d' .config #删除配置项adbyby plus+
sed -i '/CONFIG_FIRMWARE_INCLUDE_FRPC/d' .config #删除配置项FRPC
sed -i '/CONFIG_FIRMWARE_INCLUDE_FRPS/d' .config #删除配置项FRPS
sed -i '/CONFIG_FIRMWARE_INCLUDE_TUNSAFE/d' .config #删除配置项TUNSAFE
sed -i '/CONFIG_FIRMWARE_INCLUDE_ALIDDNS/d' .config #删除配置项阿里DDNS
sed -i '/CONFIG_FIRMWARE_INCLUDE_SMARTDNS/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SRELAY/d' .config

#自定义项(后添加)
echo "CONFIG_FIRMWARE_INCLUDE_MENTOHUST=n" >> .config #MENTOHUST
echo "CONFIG_FIRMWARE_INCLUDE_SCUTCLIENT=n" >> .config #SCUTCLIENT
echo "CONFIG_FIRMWARE_INCLUDE_SHADOWSOCKS=n" >> .config #SS plus+
echo "CONFIG_FIRMWARE_INCLUDE_SSOBFS=n" >> .config # simple-obfs混淆插件
echo "CONFIG_FIRMWARE_INCLUDE_SSSERVER=n" >> .config #SS server
echo "CONFIG_FIRMWARE_INCLUDE_DNSFORWARDER=n" >> .config #DNSFORWARDER
echo "CONFIG_FIRMWARE_INCLUDE_ADBYBY=n" >> .config #adbyby plus+
echo "CONFIG_FIRMWARE_INCLUDE_FRPC=n" >> .config #内网穿透FRPC
echo "CONFIG_FIRMWARE_INCLUDE_FRPS=n" >> .config #内网穿透FRPS
echo "CONFIG_FIRMWARE_INCLUDE_TUNSAFE=n" >> .config #TUNSAFE
echo "CONFIG_FIRMWARE_INCLUDE_ALIDDNS=n" >> .config #阿里DDNS
echo "CONFIG_FIRMWARE_INCLUDE_SMARTDNS=y" >> .config #smartdns
echo "CONFIG_FIRMWARE_INCLUDE_SMARTDNSBIN=y" >> .config #smartdns二进制文件
echo "CONFIG_FIRMWARE_INCLUDE_V2RAY=y" >> .config #集成v2ray执行文件（3.8M左右)，如果不集成，会从网上下载下来执行，不影响正常使用
echo "CONFIG_FIRMWARE_INCLUDE_TROJAN=n" >> .config #集成trojan执行文件(1.1M左右)，如果不集成，会从网上下载下来执行，不影响正常使用
echo "CONFIG_FIRMWARE_INCLUDE_KOOLPROXY=n" >> .config #KP广告过滤
echo "CONFIG_FIRMWARE_INCLUDE_CADDY=y" >> .config #在线文件管理服务
echo "CONFIG_FIRMWARE_INCLUDE_CADDYBIN=y" >> .config #集成caddu执行文件，此文件有13M,请注意固件大小。如果不集成，会从网上下载下来执行，不影响正常使用
echo "CONFIG_FIRMWARE_INCLUDE_ADGUARDHOME=y" >> .config
echo "CONFIG_FIRMWARE_INCLUDE_SRELAY=n" >> .config #可以不集成
echo "CONFIG_FIRMWARE_INCLUDE_WYY=y" >> .config #网易云解锁
echo "CONFIG_FIRMWARE_INCLUDE_WYYBIN=n" >> .config #网易云解锁GO版本执行文件（4M多）注意固件超大小,不集成会自动下载
echo "CONFIG_FIRMWARE_INCLUDE_ZEROTIER=y" >> .config #zerotier ~1.3M
echo "CONFIG_FIRMWARE_INCLUDE_DDNSTO=y" >> .config #DDNSTO
