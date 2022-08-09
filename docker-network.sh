# manajemen network. create. read, rm 

# create network 
❯ docker network create --driver bridge contohnetwork
3169a57eb4f67b8a3525a2cd2dcf29e3857480e107ac5ea0910b131a4fcd5aa8
❯ docker network ls
NETWORK ID NAME DRIVER SCOPE
b0b3c2806b6f bridge bridge local
3169a57eb4f6 contohnetwork bridge local
55f5eb955abc host host local
9f9f0c6d15ee none null local
    ~/udemy/docker-dasar    master ⇡2 
❯

# remove network
docker network rm contohnetwork