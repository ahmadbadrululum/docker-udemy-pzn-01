# flow
# - download image
# - buat container
# - jalanklan container

# - list container 
❯ docker container ls -a

# - create container
❯ docker container create --name contohredis redis:latest
9642efddd7c79a0ef9bccbcf5e58c5a7eff4b8f7368ed49b85f07d26e6236a4e

# - menjalankan container
❯ docker container start contohredis
contohredis

# - stop container
❯ docker container stop contohredis
contohredis

# - remove container
❯ docker container