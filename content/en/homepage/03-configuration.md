---
title: "Configuration"
weight: 3
header_menu: true
---

ZobTube configuration is pretty straightforward. It can either be passed through environmental variables or through a configuration file. The configuration file would need to be stored in the directory where ZobTube is started.

If no configuration is provided at start, the application will display a minimalist interface to allow setting it on-the-fly.

![Configuration Interface](/screenshots/empty-configuration.png)

For more examples on how the configuration can be set, feel free to refer to the [Getting Started](https://github.com/zobtube/zobtube?tab=readme-ov-file#vertical_traffic_light-getting-started) part of the Readme.

Here are some basic configuration.

##### Running locally with environmental variables

On Linux and MacOS:

```
ZT_SERVER_BIND="127.0.0.1:8069" ZT_DB_DRIVER=sqlite ZT_DB_CONNSTRING=./db.sqlite ZT_MEDIA_PATH=./data ./zobtube
```

##### Running in Docker with sqlite with configuration file

`config.yml`:
```yaml
---
config:
  bind: "0.0.0.0:8069"
db:
  driver: "sqlite"
  connstring: "/var/lib/zobtube/zt.db"
media:
  path: "/var/lib/zobtube/data"
```

Then run with the following docker command:

```
docker run -v ./config.yml:/config.yml -v ./zt-test:/var/lib/zobtube --user 1000:1000 -p 8069:8069 ghcr.io/zobtube/zobtube
```
