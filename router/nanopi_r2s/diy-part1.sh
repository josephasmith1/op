#!/bin/bash
#========================================================================================================================
# https://github.com/ophub/op
# Description: Automatically Build OpenWrt for Nanopi R2s
# Function: Diy script (Before Update feeds, Modify the default IP, hostname, theme, add/remove software packages, etc.)
# Copyright (C) 2020 https://github.com/P3TERX/Actions-OpenWrt
# Copyright (C) 2020 https://github.com/ophub/op
#========================================================================================================================

# Uncomment a feed source
# sed -i 's/#src-git helloworld/src-git helloworld/g' ./feeds.conf.default
# sed -i 's/\"#src-git\"/\"src-git\"/g' feeds.conf.default

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '/openwrt_luci/ { s/snapshots\/packages/releases\/packages-19.07/g; }' /etc/opkg/distfeeds.conf
sed -i '/openwrt_packages/ { s/snapshots\/packages/releases\/packages-19.07/g; }' /etc/opkg/distfeeds.conf
sed -i '/openwrt_routing/ { s/snapshots\/packages/releases\/packages-19.07/g; }' /etc/opkg/distfeeds.conf
sed -i '/openwrt_telephony/ { s/snapshots\/packages/releases\/packages-19.07/g; }' /etc/opkg/distfeeds.conf
sed -i '/natelol/d' /etc/opkg/distfeeds.conf
sed -i 's,downloads.openwrt.org,mirrors.cloud.tencent.com/lede,g' /etc/opkg/distfeeds.conf
