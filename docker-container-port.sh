docker container create --name [containername] --publish [posthost:portcontainer] [image:tag]
docker container create --name contohnginx --publish 8080:80 nginx:latest

docker container start [containername]
docker container stop [containername]

--publish can be shorten as -p

