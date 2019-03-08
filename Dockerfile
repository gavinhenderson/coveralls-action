FROM node:10.14.1-alpine

LABEL "com.github.actions.name"="Coveralls Action"
LABEL "com.github.actions.description"="Runs your tests then sends the coverage to coveralls"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="blue"

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh


RUN apk add --no-cache --virtual .gyp python make g++

ENTRYPOINT ["/entrypoint.sh"]
