FROM debian:jessie

RUN groupadd -r sensu && useradd -r -g sensu sensu

RUN apt-get update && apt-get install -y wget ca-certificates --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN wget -q http://sensu.global.ssl.fastly.net/apt/pubkey.gpg && apt-key add pubkey.gpg

RUN echo "deb     http://sensu.global.ssl.fastly.net/apt sensu main" > /etc/apt/sources.list.d/sensu.list

ENV SENSU_VERSION 0.26.1-1

RUN apt-get update && apt-get install -y --no-install-recommends \
    sensu=$SENSU_VERSION \
    && rm -rf /var/lib/apt/lists/*

RUN /opt/sensu/embedded/bin/gem install \
     --minimal-deps --no-ri --no-rdoc sensu-cli

RUN chown -R sensu:sensu /etc/sensu
