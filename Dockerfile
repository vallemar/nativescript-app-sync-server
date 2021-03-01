FROM docker.io/library/node:15.10-alpine3.10

RUN npm i -g pm2

RUN mkdir /opt/nativescript-app-sync-server

WORKDIR /opt/nativescript-app-sync-server

COPY . .

RUN npm i

RUN mkdir -p /app/_storage

CMD ["/opt/nativescript-app-sync-server/entrypoint"]
