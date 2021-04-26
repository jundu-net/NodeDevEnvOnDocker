FROM node:lts
RUN apt update \
    && apt -yq dist-upgrade \
    && apt install -yq --no-install-recommends \
    sudo \
    supervisor \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*
COPY supervisord.conf /etc
COPY entrypoint.sh /var/tmp/entrypoint.sh
RUN chmod +x /var/tmp/entrypoint.sh
WORKDIR /src
CMD ["/var/tmp/entrypoint.sh"]