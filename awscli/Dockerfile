FROM alpine:latest

RUN apk add --no-cache --update \
    dumb-init \
    bash \
    ca-certificates \
    openssl && \
    rm -rf /var/cache/apk/*

RUN apk add --no-cache --update \
    groff \
	jq \
    less \
    mailcap \
	python3 \
    py3-pip  && \
	pip3 install --no-cache-dir --upgrade awscli && \
	apk -v --purge del py3-pip && \
    rm -rf /var/cache/apk/*