FROM debian:stretch

RUN groupadd -r sensu && useradd -r -g sensu sensu

RUN apt-get update && apt-get install -y wget ca-certificates gnupg --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN wget -q http://sensu.global.ssl.fastly.net/apt/pubkey.gpg && apt-key add pubkey.gpg

RUN echo "deb     http://sensu.global.ssl.fastly.net/apt stretch main" > /etc/apt/sources.list.d/sensu.list

ENV SENSU_VERSION 1.2.1-2

RUN apt-get update && apt-get install -y --no-install-recommends \
    sensu=$SENSU_VERSION \
    && rm -rf /var/lib/apt/lists/*

RUN chown -R sensu:sensu /etc/sensu
