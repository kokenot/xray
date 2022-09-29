#!/bin/bash
# command update core xray armv8

rm -rf /usr/bin/xray && wget https://github.com/solomonricky/Xray-core/releases/download/v1.6.0-1/Xray-linux-arm64-v8a.zip && unzip *.zip && mv xray /usr/bin && chmod +x /usr/bin/xray && rm *.zip *.dat LICENSE README.md && xray version
