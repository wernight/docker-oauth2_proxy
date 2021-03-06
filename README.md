[![CircleCI](https://circleci.com/gh/wernight/docker-oauth2_proxy.svg?style=svg)](https://circleci.com/gh/wernight/docker-oauth2_proxy)

Supported tags and respective `Dockerfile` links
================================================

  * [`latest`](https://github.com/wernight/docker-oauth2_proxy/blob/master/Dockerfile) [![](https://images.microbadger.com/badges/image/wernight/oauth2_proxy.svg)](http://microbadger.com/images/wernight/oauth2_proxy "Get your own image badge on microbadger.com")


What is oauth2_proxy?
=====================

This is a lightweight Docker container (based on Alpine Linux) for:

https://github.com/bitly/oauth2_proxy

**oauth2_proxy** is a reverse proxy that provides authentication with Google, Github or other provider.


Usage example
-------------

    docker run --rm -it wernight/oauth2_proxy oauth2_proxy --help

Follow [their directions](https://github.com/bitly/oauth2_proxy#oauth-provider-configuration)
to set up.


User Feedbacks
==============

Having more issues? [Report a bug on GitHub](https://github.com/wernight/docker-oauth2_proxy/issues).
