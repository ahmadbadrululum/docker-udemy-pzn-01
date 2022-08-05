# buat docker dengan publish port (port fowrarding)
# — publish akseskeluar:aksescontainer
❯ docker container create --name contohnginx --publish 8080:80 nginx:latest

# akses http://localhost:8080/
