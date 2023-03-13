FROM debian:buster
RUN apt-get update -y; \
    apt install curl -y; \
    mkdir apps
COPY . /apps
WORKDIR /apps
RUN chmod +x node-nvm-nest-setup.sh && sh ./node-nvm-nest-setup.sh


#insatll npm and node and nestjs cli
CMD "/bin/bash"