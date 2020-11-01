FROM sub_xterm:latest


RUN apt update -y && apt dist-upgrade -y 
RUN ln -fs /usr/share/zoneinfo/America/Toronto /etc/localtime && dpkg-reconfigure -f noninteractive tzdata
ARG user=user
ARG uid=1000
ARG gid=1000
ENV user=$user gid=$gid uid=$uid
RUN echo "$user:x:$uid:$gid:user into subuser:/home/$user:/bin/bash" >> /etc/passwd
RUN wget "https://discordapp.com/api/download?platform=linux&format=deb" -O /tmp/discord.deb
RUN (dpkg -i /tmp/discord.deb; apt-get -y -f install; apt-get -y install libxss1 libxkbfile1 procps) && dpkg -i /tmp/discord.deb

