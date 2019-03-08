FROM node:10.14.1-alpine

LABEL "com.github.actions.name"="Coveralls Action"
LABEL "com.github.actions.description"="Runs your tests then sends the coverage to coveralls"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="blue"

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
