# restore ini digunakan untuk data backup tar.gz dimasukan ke dalam storage/volume pada docker
❯ docker volume create --name mongorestore

# restore ke dalam mongostore diambil dari targz
docker container run --rm --name ubunturestore --mount "type=bind,source=/home/vcgamers/udemy/docker-dasar/nginx-data,destination=/backup" --mount "type=volume,source=mongorestore,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1”

# create container
docker container create --name mongorestore --publish 27020:27017 --mount "type=volume,source=mongorestore,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=eko --env MONGO_INITDB_ROOT_PASSWORD=eko mongo:latest
