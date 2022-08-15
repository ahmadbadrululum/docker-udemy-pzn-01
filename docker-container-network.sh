# menghubungkan container 1 dengan yg lain
# create container dengan network 
# 2 aplikasi yang saling berhubungan.
# contoh: aplikasi mongonetwork dengan mongoexpres

docker network create --driver bridge mongonetwork


#create mongonetwork
docker container create --name mongodb --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=bad --env MONGO_INITDB_ROOT_PASSWORD=123qwe mongo:latest


#create mongoexpres

docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://bad:bad@mongodb:27017/" mongo-express:latest


docker network disconnect mongonetwork mongodb

docker network connect mongonetwork mongodb