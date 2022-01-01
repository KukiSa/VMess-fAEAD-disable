# VMess-fAEAD-disable
Starting from January 1, 2022, the v2ray server will disable compatibility with MD5 authentication information by default. Any client that uses MD5 authentication information will not be able to connect to the server that disables VMess MD5 authentication information.
This script adds the environment variable `V2RAY_VMESS_AEAD_FORCED=false` to the v2ray systemd's file to force it to enable compatibility with the MD5 authentication information authentication mechanism. This enables the client using MD5 authentication information to continue to connect to the server using VMess MD5 authentication information.

## Instructions
```
wget -O VMess-fAEAD-disable.sh https://raw.githubusercontent.com/KukiSa/VMess-fAEAD-disable/main/main.sh && bash VMess-fAEAD-disable.sh
```

**It is worth noting that the MD5 authentication information has been proven to be insecure under the review of some DPI technologies. When you execute this script, you accept that you are responsible for all consequences caused by insecure encryption implementation.**
