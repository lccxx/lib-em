FROM ruby:alpine

RUN set -ex && \
    apk add --no-cache --virtual .builddeps make g++ && apk add --no-cache libstdc++ && \
    gem install --no-rdoc eventmachine && apk del .builddeps
