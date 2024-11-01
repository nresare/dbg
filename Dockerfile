FROM alpine:3.20.3

RUN apk add curl git openssl doas zsh tcpdump

RUN addgroup -g 10001 -S unprivileged && \
    adduser -u 10001 -S unprivileged -G unprivileged --shell /bin/zsh

RUN echo "permit nopass unprivileged" > /etc/doas.conf
USER 10001:10001
ENTRYPOINT ["/bin/zsh"]
