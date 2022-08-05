- fitur yg digunakan untuk mengeksekusi atau masuk container

-i interacti -t alokasi terminal
# masuk ke container
❯ docker container exec -i -t contohredis /bin/bash
root@9642efddd7c7:/data#

# penggunaan redis pada container
root@9642efddd7c7:~# redis-cli
127.0.0.1:6379> set bad "halo gais”