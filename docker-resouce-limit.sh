#digunaakan untuk membatasi memori disetiap kontainer saat digunakan
#digunaakan untuk membatasi cpu disetiap kontainer saat digunakan
❯ docker container create --name smallnginx --memory 100m --cpus 0.5 --publish 8081:80 nginx:latest
#pengecekan bisa lewat docker stats dibagian memoryy limit akan terlihat
