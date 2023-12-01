FROM ruby:3.2.2-alpine3.18
MAINTAINER Yehiyam Livneh <yehiyam@gmail.com>
RUN apk add --no-cache build-base git && \
    gem install travis && \
    gem install travis-lint && \
    apk del build-base &&\
    mkdir project
WORKDIR project
VOLUME ["/project"]
ENTRYPOINT ["travis"]
