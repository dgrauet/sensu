# Tags
- 0.23.2, 0.23, latest ([Dockerfile](https://github.com/dgrauet/sensu/blob/master/Dockerfile))
- 0.23.2-server, 0.23-server, server ([server/Dockerfile](https://github.com/dgrauet/sensu/blob/master/server/Dockerfile))
- 0.23.2-api, 0.23-api, api ([server/Dockerfile](https://github.com/dgrauet/sensu/blob/master/api/Dockerfile))

# What is Sensu ?

Monitor servers, services, application health, and business KPIs. Get notified about failures before your users do. Collect and analyze custom metrics. Give your business the competitive advantage it deserves.

[Wikipedia](https://en.wikipedia.org/wiki/Sensu_%28computing%29)

# How to use this image

$ docker run -d  -v <host_sensu_dir>:/etc/sensu:ro --name sensu-server dgrauet/sensu:server

$ docker run -d  -v <host_sensu_dir>:/etc/sensu:ro --name sensu-api dgrauet/sensu:api
