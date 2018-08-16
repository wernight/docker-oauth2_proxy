FROM gliderlabs/alpine:3.6


RUN apk add --no-cache tini \
  && apk add --no-cache curl \
  && export OAUTH2_PROXY_VERSION=2.0.1.linux-amd64.go1.4.2 \
  && curl -sL \
    "https://github.com/bitly/oauth2_proxy/releases/download/v2.0.1/oauth2_proxy-$OAUTH2_PROXY_VERSION.tar.gz" | \
    tar xzvC /tmp \
  && mv /tmp/oauth2_proxy-*/oauth2_proxy /bin/ \
  && rm -rf /tmp/oauth2_proxy* \
  && chmod +x /bin/oauth2_proxy \
  && apk del --purge curl \
  && oauth2_proxy --version

ENTRYPOINT ["/sbin/tini"]
CMD ["oauth2_proxy", "--help"]
