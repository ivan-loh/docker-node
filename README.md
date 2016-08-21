
## Node Docker Sample

Sample repo on how to prepare a node image from a ubuntu base


### Building The Image
```
docker build -t scr1p7ed/web-app
```

### Starting the server with an enviroment variable
```
docker run -e "GREET=MAX" --name node-web-greet -o 0.0.0.0:5555:8080 -d web-greet
```
