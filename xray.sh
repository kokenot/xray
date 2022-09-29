#!/bin/bash
# command update core xray armv8

DOWNLOADS_DIR="${HOME}/XraycoreArmv8"
REPOSITORY_URL="https://github.com/solomonricky/Xray-core/releases/download/v1.6.0-1/Xray-linux-arm64-v8a.zip"
XRAY_TMP="${DOWNLOADS_DIR}/xray"

function main() {
  # install curl if it's unavailable
  if [[ $(opkg list-installed curl | grep -c git) != "1" ]]; then
    opkg update \
      && opkg install curl
  fi
  # create ~/Downloads directory if not exist
  if [[ ! -d "${DOWNLOADS_DIR}" ]]; then
    mkdir -p "${DOWNLOADS_DIR}"
  fi
  # get xray core
  if [[ ! -d "${XRAY_TMP}" ]]; then
    git clone --depth 1 "${REPOSITORY_URL}" \
      && cd "${XRAY_TMP}" \
      && unzip "*.zip" \
      && mv xray "/usr/bin" \
      && chmod +x "/usr/bin/xray" \
      && xray version
  fi
}
main
