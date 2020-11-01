FROM sub_xterm:latest


RUN apt update -y && apt dist-upgrade -y && apt install telegram-desktop -y
RUN ln -fs /usr/share/zoneinfo/America/Toronto /etc/localtime && dpkg-reconfigure -f noninteractive tzdata
ARG user=user
ARG uid=1000
ARG gid=1000
ENV user=$user gid=$gid uid=$uid
RUN echo "$user:x:$uid:$gid:user into subuser:/home/$user:/bin/bash" >> /etc/passwd
