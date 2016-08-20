
## Node Docker Sample

Sample repo on how to prepare a node image from a ubuntu base


### Building The Image
```
docker build -t scr1p7ed/web-app
```

### Starting the server
```
docker run --name node-web-app -p 0.0.0.0:5555:8080 web-app
```