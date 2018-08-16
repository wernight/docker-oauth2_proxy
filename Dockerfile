FROM alpine:3.8

RUN set -x \
  && apk add --no-cache tini \
  && apk add --no-cache curl \
  && LATEST_OAUTH2_PROXY_RELEASE=$(curl -sSL https://api.github.com/repos/bitly/oauth2_proxy/releases/latest | grep browser_download_url | grep linux-amd64 | head -n 1 | cut -d '"' -f 4) \
  && curl -sL "$LATEST_OAUTH2_PROXY_RELEASE" | tar xzvC /tmp \
  && mv /tmp/oauth2_proxy-*/oauth2_proxy /bin/ \
  && rm -rf /tmp/oauth2_proxy* \
  && chmod +x /bin/oauth2_proxy \
  && apk del --purge curl \
  && oauth2_proxy --version

ENTRYPOINT ["/sbin/tini"]
CMD ["oauth2_proxy", "--help"]
