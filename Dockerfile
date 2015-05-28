FROM ubuntu

RUN sudo apt-get update; \
    sudo apt-get install -y curl; \
    curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -; \
    curl https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - ; \
    sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'; \
    sudo apt-get update; \
    sudo apt-get install -y google-chrome-stable nodejs Xvfb

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
