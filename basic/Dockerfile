FROM alpine:latest

ENV TZ=Asia/Jakarta

RUN apk add --no-cache --update \
    dumb-init \
    bash \
    ca-certificates \
    tzdata \
    openssl && \
    rm -rf /var/cache/apk/*
    
RUN cp /usr/share/zoneinfo/$TZ /etc/localtime && \
	echo $TZ > /etc/timezone
