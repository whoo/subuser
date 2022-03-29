FROM debian:11
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y gnupg xterm curl wget git libxss1  libnss3 libasound2 libpulse0  && rm -rf /var/lib/apt/lists/*
ENV SHELL=/bin/bash
