FROM node:14.17.0-alpine3.10

RUN apk --no-cache add --virtual native-deps \
  g++ gcc libgcc libstdc++ linux-headers make python && \
  npm install -g npm@6 && \
  npm install --quiet node-gyp -g &&\
  npm cache clean --force && \
  apk del native-deps

