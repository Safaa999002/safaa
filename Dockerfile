FROM ghcr.io/xtls/xray-core:latest

COPY config.json /usr/local/etc/xray/config.json

ENTRYPOINT ["xray"]
CMD ["run", "-c", "/usr/local/etc/xray/config.json"]
