#!/bin/sh

# Exit if any subcommand fails
set -e 
sh -c "npm i && npm run coverage && cat ./coverage/lcov.info | ./node_modules/coveralls/bin/coveralls.js && rm -rf ./coverage"
