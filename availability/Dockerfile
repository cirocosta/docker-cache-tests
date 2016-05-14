FROM alpine:3.3

RUN apk add --update bash python socat && rm -rf /var/cache/apk/*
ADD ./entrypoint.sh /root/entrypoint.sh

ENTRYPOINT [ "/bin/bash", "/root/entrypoint.sh" ]
CMD [ "supervise", "sleep", "start-server", "notify" ]
EXPOSE 80 1337
