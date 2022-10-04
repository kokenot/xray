mkdir xray-arm
rm /usr/bin/xray
mv /usr/bin/xray /usr/bin/xray-bak
wget https://github.com/solomonricky/Xray-core/releases/download/v1.6.0-1/Xray-linux-arm64-v8a.zip
unzip *.zip /xray-arm
cd xray-arm
cp xray /usr/bin
chmod +x /usr/bin/xray
rm -rf xray-arm
xray version
