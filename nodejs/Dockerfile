FROM sub_xterm:latest
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash
RUN apt install -y nodejs libgtk-3-0 libgtk2.0 libgconf2-dev
RUN apt-get autoremove - && rm -rf /var/lib/apt/lists/*
RUN node -v
RUN npm -v
