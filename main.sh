#!/usr/bin/env bash

read -rp "Please enter the path of v2ray.service (default: /etc/systemd/system/v2ray.service)：" serFile
[ -z "$serFile" ] && serFile="/etc/systemd/system/v2ray.service"
sed -i '/Environment="V2RAY_VMESS_AEAD_FORCED=false"/d' $serFile
sed -i '/ExecStart/i\Environment="V2RAY_VMESS_AEAD_FORCED=false"' $serFile
systemctl daemon-reload
systemctl restart v2ray
exit
