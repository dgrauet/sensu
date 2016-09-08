FROM dgrauet/sensu:0.26.1

RUN /opt/sensu/embedded/bin/gem install \
     --minimal-deps --no-ri --no-rdoc sensu-cli

CMD ["/opt/sensu/bin/sensu-server", "-c", "/etc/sensu/config.json", "-d", "/etc/sensu/conf.d"]
