# no-vnc Docker Image

This container exports a connection to a VNC server using no-vnc. This is useful to connect to otherwise innaccesible containers, without the use of another client except the browser.

For example:

```sh
docker run \
    -it \
    -p 8081:8081 \
    --link containerthatrunsvnc:vnc \
    bmst/no-vnc
```

