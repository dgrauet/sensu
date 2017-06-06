# Tags
- 0.29.0, 0.29, latest ([Dockerfile](https://github.com/dgrauet/sensu/blob/master/Dockerfile))
- 0.29.0-server, 0.29-server, server ([server/Dockerfile](https://github.com/dgrauet/sensu/blob/master/server/Dockerfile))
- 0.29.0-api, 0.29-api, api ([api/Dockerfile](https://github.com/dgrauet/sensu/blob/master/api/Dockerfile))

# What is Sensu ?

Monitor servers, services, application health, and business KPIs. Get notified about failures before your users do. Collect and analyze custom metrics. Give your business the competitive advantage it deserves.

[Wikipedia](https://en.wikipedia.org/wiki/Sensu_%28computing%29)

# How to use this image

$ docker run -d  -v &lt;host&#95;sensu&#95;dir&gt;:/etc/sensu:ro --name sensu-server dgrauet/sensu:server

$ docker run -d  -v &lt;host&#95;sensu&#95;dir&gt;:/etc/sensu:ro --name sensu-api dgrauet/sensu:api
