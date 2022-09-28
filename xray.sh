#!/bin/bash
# command update core xray armv8
# stb nanopi
mv /usr/bin/xray /usr/bin/xray-bak
wget "https://github.com/solomonricky/Xray-core/releases/download/v1.6.0-1/Xray-linux-arm64-v8a.zip"
unzip Xray-linux-arm64-v8a.zip
mv xray /usr/bin
chmod +x /usr/bin/xray
xray version
