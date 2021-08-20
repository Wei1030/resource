#!/usr/bin/env bash
#

bash <(curl -L https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh)

curl -O https://raw.githubusercontent.com/Wei1030/resource/main/vps_proxy_gen_script/res/config.json

\cp -f config.json /usr/local/etc/v2ray/config.json

systemctl stop firewalld

systemctl enable v2ray
systemctl start v2ray
