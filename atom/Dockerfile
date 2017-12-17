FROM debian
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt upgrade -y
RUN apt install -y wget
RUN wget https://atom.io/download/deb -O atom.deb
RUN (dpkg -i atom.deb; apt-get -y -f install; apt-get -y install libxss1 libxkbfile1) && dpkg -i atom.deb
RUN apt install -y libasound2
RUN rm -rf atom.deb /var/lib/apt/lists && apt-get autoclean
