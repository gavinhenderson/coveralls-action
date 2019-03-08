#!/bin/sh

# Exit if any subcommand fails
set -e 

# Setup node modules
setup="NODE_ENV=development npm install &&"

echo "## Running Jest"
args=$@
sh -c "$setup ./node_modules/.bin/jest $args"
