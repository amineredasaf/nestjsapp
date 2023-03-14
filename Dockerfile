FROM debian:buster
RUN apt-get update -y; \
    apt install curl -y; \
    mkdir apps
COPY . /apps
WORKDIR /apps
#RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
RUN chmod 777 node-nvm-nest-setup.sh && sed -i -e 's/\r$//' node-nvm-nest-setup.sh && ./node-nvm-nest-setup.sh
#RUN nvm install node -y
#RUN npm i -g @nestjs/cli

#insatll npm and node and nestjs cli
CMD "/bin/bash"
