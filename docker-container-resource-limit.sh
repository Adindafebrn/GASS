###### Container Resource Limit ######

saat membuat container, secara default akan menggunakan semua CPU & memory
yang tersedia disistem Host (Linux)

jika misal container terlalu banyak memakan CPU dan memory, 
akan berdampak ke performa container lain/sistem host

baiknya, saat membuat container, set resource limit terhadap containernya


--memory
--cpus

docker container create --name [containername] --publish porthost:portimage --memory 100m --cpus 0.5 [image:tag]
docker container create --name smallnginx --publish 8081:80 --memory 100m --cpus 0.5 nginx:latest

docker container start [containername]

