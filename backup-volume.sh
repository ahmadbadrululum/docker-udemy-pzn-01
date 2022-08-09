# create container terlebih dahulu
docker container create --name nginxbackup  --mount "type=bind,source=/home/vcgamers/udemy/docker-dasar/nginx-data,destination=/backup"  --mount "type=volume,source=mongodbvolume,destination=/data"  nginx:latest

# run container
docker start nginxbackup

# entry container
docker container exec -i -t nginxbackup /bin/bash
# root@cdb4ed609b60:/# 

# perintah untuk melakukan backup dalam container
tar cvf /backup/backup.tar.gz /data
# saat sudah menjalankan ini, nantinya akan ada file backup.tar.gz di folder docker dasar atau sesuai definisi kita


# untuk backup menggunakan run ada 3 tahap simp;e
# 1. stop volume agar tidak write data
# 2. jalankan perintah 
docker container run --rm --name ubuntubackup --mount "type=bind,source=/home/vcgamers/udemy/docker-dasar/nginx-data,destination=/backup" --mount "type=volume,source=mongodbvolume,destination=/data" ubuntu:latest tar cvf /backup/backup-data.tar.gz /data

# 3. start volume nya kembali