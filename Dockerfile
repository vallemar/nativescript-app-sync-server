FROM docker.io/library/node:15.12.0-alpine3.10

RUN mkdir /opt/nativescript-app-sync-server

WORKDIR /opt/nativescript-app-sync-server

COPY . .

RUN npm cache clear --force
RUN npm config set registry="http://registry.npmjs.org/"
RUN npm config set strict-ssl false
RUN npm i

RUN mkdir -p /app/_storage

CMD ["pm2-runtime", "start", "/opt/nativescript-app-sync-server/process.json"]
