# docker_kali


docker build -t  kali .

docker run -d -p 80:80 -p 2222:22  kali /bin/bash /run.sh

docker exec -it kali /bin/bash