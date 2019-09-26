#!/bin/bash
#pppoe拨号ppp0获得ip带着参数访问vps的http服务，vps记录请求，可以得到该ip，设置crontab每分钟访问一次。
source /etc/profile
IP=$(ifconfig ppp0 | grep inet | awk '{print $2}')
curl "http://IPorDomian/?ip=$IP" > /dev/null 2>&1
