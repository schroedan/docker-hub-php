FROM php:7.2.19-alpine

ENV XDEBUG_VERSION=2.6.1

# hadolint ignore=SC2086,DL3018
RUN set -xe \
    && apk add --no-cache --virtual .build-deps \
        ${PHPIZE_DEPS}

RUN set -xe \
    && pecl install \
        xdebug-${XDEBUG_VERSION} \
    && apk del .build-deps
