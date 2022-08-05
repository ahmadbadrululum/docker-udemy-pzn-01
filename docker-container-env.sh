# command untuk buat container dan genereate env nya
❯ docker container create --name contohmongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=bad --env  MONGO_INITDB_ROOT_PASSWORD=123qwe mongo:latest
env  MONGO_INITDB_ROOT_PASSWORD=123qwe mongo:latest
Unable to find image 'mongo:latest' locally

#setelah itu bisa connect dengan robomongo. aplikasi seperti dbeaver
