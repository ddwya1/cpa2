FROM eceasy/cli-proxy-api:latest

# blitz.cloud runs containers as UID/GID 1000. Prepare CPA's writable directories.
RUN mkdir -p /CLIProxyAPI/auths /CLIProxyAPI/logs /CLIProxyAPI/plugins \
    && chown -R 1000:1000 /CLIProxyAPI

COPY --chown=1000:1000 config.yaml /CLIProxyAPI/config.yaml

WORKDIR /CLIProxyAPI
USER 1000:1000

EXPOSE 8317
