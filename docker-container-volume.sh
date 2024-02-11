####### VOLUME ########

Volume yang sudah dibuat, bisa digunakan di container
(+) : jika container dihapus, data aman di volume

mirip dengan bind mount, menggunakan parameter --mount
namun menggunakan type volume & source nama volume

#######################

docker volume create mongodata

docker container create -- [containername] --publish [porthost:portimage] --mount "type=volume,source=[volumename],destination=folderdb,readonly" [image:tag]
docker container create -- mongovolume --publish 27019:27017 --mount "type=volume,source=mongovolume,destination=/data/db,readonly" [image:tag] --env MONGO_INITDB_ROOT_USERNAME=dinda --env MONGO_INITDB_ROOT_PASSWORD=febri mongo:latest

docker container ls -a

docker container start mongovolume

