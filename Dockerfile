FROM node:10.14.1-alpine

LABEL "com.github.actions.name"="Coveralls Action"
LABEL "com.github.actions.description"="Runs your tests then sends the coverage to coveralls"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="blue"

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN apk --no-cache add --virtual native-deps \
  g++ gcc libgcc libstdc++ linux-headers make python && \
  npm install --quiet node-gyp -g &&\
  npm install --quiet && \
  apk del native-deps
  
ENTRYPOINT ["/entrypoint.sh"]
