FROM sub_xterm:latest
RUN apt -y update && apt install -y gnupg
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash
RUN apt install -y nodejs libgtk2.0
RUN apt-get autoremove - && rm -rf /var/lib/apt/lists/*
RUN ln -fs /usr/share/zoneinfo/America/Toronto /etc/localtime && dpkg-reconfigure -f noninteractive tzdata
ARG user=user
ARG uid=1000
ARG gid=1000
ENV user=$user gid=$gid uid=$uid
RUN echo "$user:x:$uid:$gid:user into subuser:/home/$user:/bin/bash" >> /etc/passwd
COPY Start.sh /
