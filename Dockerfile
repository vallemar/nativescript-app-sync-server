FROM quay.io/centos/centos:8

RUN yum install -y @nodejs

RUN npm i -g pm2

RUN mkdir /opt/nativescript-app-sync-server

WORKDIR /opt/nativescript-app-sync-server

COPY . .

RUN npm i

RUN mkdir -p /app/_storage

CMD ["/opt/nativescript-app-sync-server/entrypoint"]
