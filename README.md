Docker no-ip-ddns
=================

This container is running the noip.com DUC client for updating your DynDN.

Usage
-----

First time start the container interactively to setup noip.com credentials:

```
sudo docker run -it --name noip thomass/no-ip-ddns
```

Then you can start the permanent DUC process this way:

```
sudo docker start noip
```

Licence
-------

The whole repository is licenced under BSD. Please mention following:

github.com/ThomasSteinbach (thomass at aikq.de)
