# sharing/binding folder atau file dari luar ke dalam container
# aturan nya ada type, soure, destination, readponly
# saat docker dihapus data masih ada di dalam storage kita
docker container create --name contohmongovolume --publish 27018:27017 --mount "type=volume, source=mongodbvolume,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=bad --env MONGO_INITDB_ROOT_PASSWORD=123qwe mongo:latest
0ceeeefa5ef321edf5dd296c021802a83344a035b6a1ec3b25a883de181e256b