#!/bin/sh

# Exit if any subcommand fails
set -e 
export COVERALLS_REPO_TOKEN=$REPO_TOKEN
export COVERALLS_SERVICE_NAME="GitHub Action"
sh -c "npm i && npm run coverage && cat ./coverage/lcov.info | ./node_modules/coveralls/bin/coveralls.js"
