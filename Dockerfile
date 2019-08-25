FROM alpine
COPY script/ca-certificates.crt /etc/ssl/certs/
COPY dist/traefik /
EXPOSE 80 443
VOLUME ["/tmp"]
ENTRYPOINT ["/traefik"]
