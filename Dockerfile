#######################################################
##
## 	Dock me if U Can presentation container descriptor
##
##  @author rguillom
#######################################################
FROM nginx:alpine

## Set the initial reveal version
ARG REVEAL_VERSION=3.8.0

## Install all required inner libs and apps
RUN \
    wget https://github.com/hakimel/reveal.js/archive/${REVEAL_VERSION}.tar.gz -O /tmp/revealjs-${REVEAL_VERSION}.tar.gz \
    && tar xf /tmp/revealjs-${REVEAL_VERSION}.tar.gz -C /tmp \
    && cd /tmp/reveal.js-${REVEAL_VERSION} \
    && mv css js lib plugin demo.html /usr/share/nginx/html \
    && rm -rf /tmp/*

## Copy the actual reveal index page to our presentation directory
COPY slides/* /usr/share/nginx/html/
