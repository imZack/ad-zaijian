# AD-ZaiJian <img src="https://cloud.githubusercontent.com/assets/690703/9665138/d2c577e8-52a0-11e5-9608-1e7a24492d9c.png" width="200" align="right">

> Currently, most of this repo is forked from [:point_right: PI-hole](https://github.com/jacobsalmela/pi-hole).

**Already tested on the following platforms**
 + Raspberry PI 2 (kernel 4.2)
 + Synlolgy DS 713+
 + Ubuntu 14.04 64bit

## Demo

![demo](https://cloud.githubusercontent.com/assets/690703/9702328/2a10696e-548a-11e5-9736-84e46ef2c409.gif)

## Prerequisite
- A server with Docker :whale:

## Usage

**1. Pull image from Docker Hub**

```
# For x86_64 machine:
λ ~/ docker pull zack/ad-zaijian

# For RPI 2 or other armhf devices:
λ ~/ docker pull zack/ad-zaijian-armhf
```

**2. Run container**
```
λ ~/ docker run -d --name ad-zaijian \
                -p 53:53/tcp -p 53:53/udp \
                -v `pwd`:/data \
                --cap-add=NET_ADMIN \
                zack/ad-zaijian
```
+ Change envirment variable IP to server's IP address
+ The blocklists and server log will save to your current work directory via ``pwd``
> Of course, you could change it to any where you want.

> It will take a while for fetching lots of block lists from internet at the first time :sweat_smile:.

**3. Modify your devices' dns**

Set DNS Server to your ad-zaijian's IP and That's all!

## TODO
+ [ ] Rewrite and enhance block lists scripts
+ [ ] Expose dnsmasq statistics & data via API or ...

## License
GPL v2
