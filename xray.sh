#!/bin/bash
# command update core xray armv8

DOWNLOADS_DIR="${HOME}/XraycoreArmv8"
REPOSITORY_URL="https://github.com/kokenot/xray.git"
XRAY_TMP="${DOWNLOADS_DIR}/xray"

function get_xray() {
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
    git clone --depth 1 "${REPOSITORY_URL}" "${XRAY_TMP}" \
      && cd "${XRAY_TMP}" \
      && bash xray.sh
  fi
}
