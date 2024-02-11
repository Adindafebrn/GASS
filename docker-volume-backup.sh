## TAHAP BACKUP ##

1. matikan container yang menggunakan volume yang ingin di backup
2. buat container baru dengan 2 mount, volume yang ingin di backup, dan bind mount folder dari sistem host
3. backup menggunakan container dgn cara meng-archive isi volume & simpan di bind mount folder
4. isi file backup sekarang ada di folder sistem host
5. delete container yang kita gunakan untuk melakukan backup

##################

docker container ls

docker container stop mongovolume

mkdir backup

pwd /Users/path/to/backup

docker container create --name nginxbackup --mount "type=bind,source=/Users/path/to/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest

docker container start nginxbackup

docker container exec -i -t nginxbackup /bin/bash

cd /backup

tar cvf /backup/backup.tar.gz /data 

exit

docker container stop nginxbackup

docker container rm nginxbackup 

docker container start mongovolume

#backup akan di simpan di backup.tar.gz