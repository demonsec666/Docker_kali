FROM kalilinux/kali-linux-docker
MAINTAINER Demon
RUN apt-get update && apt-get install -y \
  sqlmap \
  ssh \
  apache2 && rm -rf /var/lib/apt/lists/*
ADD sshd_config /etc/ssh/
ADD run.sh /run.sh
RUN   echo 'root:demon' | chpasswd   \
  chmod 777  /run.sh
#开放80/22端口
EXPOSE 80 22
CMD ["/run.sh"]
