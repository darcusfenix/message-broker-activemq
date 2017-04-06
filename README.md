# Image java openjdk 7 and activemq 5.14.4

### How to build this image ?

```
$   docker build -t darcusfenix/activemq:v1.0.0 .
```

### How to run ?

```
$   docker run -it -p 1883:1883 -p 61614:61614 -d \
    --name broker-message \
    darcusfenix/activemq:v1.0.0
```

### How to follow logs ?

```
$   docker logs --follow broker-message
```
