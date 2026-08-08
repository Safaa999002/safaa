#!/bin/sh
set -eu

: "${UUID:?UUID environment variable is required}"

sed "s/__UUID__/${UUID}/g" \
  /etc/xray/config.json.template \
  > /etc/xray/config.json

exec xray run -config /etc/xray/config.json
