# VMess-fAEAD-disable
Starting from January 1, 2022, the v2ray server will disable compatibility with MD5 Authentication Information by default. Any client that uses MD5 authentication information will not be able to connect to the server that disables VMess MD5 authentication information.

This script adds the environment variable `V2RAY_VMESS_AEAD_FORCED=false` to the systemd file of v2ray to force it to enable compatibility with the MD5 Authentication Information authentication mechanism. It enables the client using MD5 authentication information to continue to connect to the server using VMess MD5 Authentication Information.

## Instruction
### Interactive Command
```
wget -O VMess-fAEAD-disable.sh https://raw.githubusercontent.com/KukiSa/VMess-fAEAD-disable/main/main.sh && bash VMess-fAEAD-disable.sh
```

### One Sentence Command
```
wget -O VMess-fAEAD-disable-nostatus.sh https://raw.githubusercontent.com/KukiSa/VMess-fAEAD-disable/main/no-status.sh && bash VMess-fAEAD-disable-nostatus.sh <value>
```

The parameter `<value>` is the path of `v2ray.service`, if not filled in, the default is `/etc/systemd/system/v2ray.service`.

**It is worth noting that the MD5 authentication information has been proven to be insecure under the review of some DPI technologies. When you execute this script, you accept that you are responsible for all consequences caused by insecure encryption implementation.**
