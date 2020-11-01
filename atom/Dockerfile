#FROM debian
FROM sub_xterm
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y wget && wget  https://atom.io/download/deb -O atom.deb
RUN (dpkg -i atom.deb; apt -y update ; apt-get -y -f install; apt-get -y install libxss1 libxkbfile1) && dpkg -i atom.deb
RUN apt install -y libasound2
RUN rm -rf atom.deb /var/lib/apt/lists && apt-get autoclean
ARG user=user
ARG uid=1000
ARG gid=1000
ENV user=$user gid=$gid uid=$uid
RUN echo "$user:x:$uid:$gid:user into subuser:/home/$user:/bin/bash" >> /etc/passwd
