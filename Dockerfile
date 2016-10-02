FROM alpine:3.4
RUN \
    apk update && \
    apk upgrade && \
    apk add rsync && \
    apk add openssh && \
    mkdir /source && \
    true
ENTRYPOINT ["rsync"]
CMD ["--help"]