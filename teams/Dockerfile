FROM sub_xterm:latest

RUN wget "https://teams.microsoft.com/downloads/desktopurl?env=production&plat=linux&arch=x64&download=true&linuxArchiveType=deb" -O /root/teams.deb
RUN (dpkg -i /root/*.deb ; apt update -y ; apt -y -f install ; dpkg -i /root/*.deb)
RUN ln -fs /usr/share/zoneinfo/America/Toronto /etc/localtime && dpkg-reconfigure -f noninteractive tzdata
ARG user=user
ARG uid=1000
ARG gid=1000
ENV user=$user gid=$gid uid=$uid
RUN echo "$user:x:$uid:$gid:user into subuser:/home/$user:/bin/bash" >> /etc/passwd
