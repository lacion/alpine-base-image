FROM alpine:latest

ENV TZ=Asia/Jakarta

RUN apk add --no-cache --update \
    groff \
	jq \
    less \
    mailcap \
	python3 \
    py3-pip  && \
	pip3 install --no-cache-dir --upgrade awscli && \
	apk -v --purge del py3-pip 

RUN apk add --no-cache --update \
    dumb-init \
    bash \
    ca-certificates \
    tzdata \
    openssl && \
    rm -rf /var/cache/apk/*
    
RUN cp /usr/share/zoneinfo/$TZ /etc/localtime && \
	echo $TZ > /etc/timezone
