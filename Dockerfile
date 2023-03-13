FROM debian:buster
RUN apt-get update -y; \
    apt install curl -y ; \
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash -y ;\
    export NVM_DIR="/home/yourusername/.nvm" [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" ; \
    nvm install node -y ; \
    npm i -g @nestjs/cli ; \
    mkdir app
WORKDIR /apps
#insatll npm and node and nestjs cli
CMD "/bin/bash"