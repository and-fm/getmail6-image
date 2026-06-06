FROM alpine:latest

ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache curl python3 py3-pip && ln -sf python3 /usr/bin/python && pip install --break-system-packages getmail6

RUN addgroup -g 1000 getmail6 \
    && adduser -G getmail6 -u 1000 getmail6 -D

USER getmail6
