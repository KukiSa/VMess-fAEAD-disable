#!/usr/bin/env bash

serFile=$1
[ -z "$serFile" ] && serFile="/etc/systemd/system/v2ray.service"
sed -i '/ExecStart/i\Environment="V2RAY_VMESS_AEAD_FORCED=false"' $serFile
systemctl daemon-reload
systemctl restart v2ray
exit
