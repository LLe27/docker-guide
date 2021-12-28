FROM node:13-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PASSWORD=password

RUN mkdir -p /home/app

COPY ./app /home/app

# set default dir so that the next command executes in dir /home/app dir
WORKDIR /home/app

# will execute npm install command in /home/app because of WORKDIR
RUN npm install

# no need for /home/app/server.js because of WORKDIR
CMD [ "node", "server.js" ]