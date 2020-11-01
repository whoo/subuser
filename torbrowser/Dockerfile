FROM debian:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt -y update && apt upgrade -y 
RUN apt install -y libgtk-3.0 libdbus-glib-1-2 libxt6 wget gnupg xz-utils libx11-xcb1
#RUN apt install -y libdbus-glib-1-2 libx11-xcb1 xterm
ENV SHELL=/bin/bash
#RUN printf "deb http://deb.debian.org/debian stretch-backports main contrib" > /etc/apt/sources.list.d/stretch-backports.list && apt update
#RUN apt install -y torbrowser-launcher -t stretch-backports
COPY first.sh /
