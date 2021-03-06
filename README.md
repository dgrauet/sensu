# Tags
- 1.8.0, 1.8, latest ([Dockerfile](https://github.com/dgrauet/sensu/blob/master/Dockerfile))
- 1.8.0-server, 1.8-server, server ([server/Dockerfile](https://github.com/dgrauet/sensu/blob/master/server/Dockerfile))
- 1.8.0-api, 1.8-api, api ([api/Dockerfile](https://github.com/dgrauet/sensu/blob/master/api/Dockerfile))

# What is Sensu ?

Monitor servers, services, application health, and business KPIs. Get notified about failures before your users do. Collect and analyze custom metrics. Give your business the competitive advantage it deserves.

# How to use this image

$ docker run -d  -v &lt;host&#95;sensu&#95;dir&gt;:/etc/sensu:ro --name sensu-server dgrauet/sensu:server

$ docker run -d  -v &lt;host&#95;sensu&#95;dir&gt;:/etc/sensu:ro --name sensu-api dgrauet/sensu:api



[Sensu Changelog](https://github.com/sensu/sensu/blob/master/CHANGELOG.md)
