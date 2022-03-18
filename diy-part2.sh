#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate

# Modify Host Name
sed -i '/uci commit system/i\uci set system.@system[0].hostname='MiR4A'' package/lean/default-settings/files/zzz-default-settings

# Modify Theme
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify Empty Password
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-setting

# Modify WiFi SSID
sed -i 's/ssid=OpenWrt/ssid=OpenWrt/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
