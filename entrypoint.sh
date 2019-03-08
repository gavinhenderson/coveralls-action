#!/bin/sh

# Exit if any subcommand fails
set -e 
sh -c "npm i && npm run coverage | ./node_modules/coveralls/bin/coveralls.js"
