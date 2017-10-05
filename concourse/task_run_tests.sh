#!/bin/bash

set -e # fail fast
# set -x # print commands

# Connect to cf

cf login -a $api -u $username -p $password -o $organization -s $space

# open shh coonnection to app container
# cf ssh $appname -c "set -x && 
# set -e && 
# export PATH=$PATH:/home/vcap/deps/0/node/bin/ && 
# alias npm='node /home/vcap/deps/0/node/lib/node_modules/npm/bin/npm-cli.js' && 
# cd app/ && 
# npm install --only=dev && 
# npm test"

# open shh connection to app container
echo "Connecting to $appname ..."
cf ssh $appname -c "set -e && 
set -x && 
export PATH=$PATH:/home/vcap/deps/0/node/bin/ && 
alias npm='node /home/vcap/deps/0/node/lib/node_modules/npm/bin/npm-cli.js' && 
cd app/ && 
npm install --only=dev && 
npm test"

# cf ssh greg_test -c "set -x && set -e && export PATH=$PATH:/home/vcap/deps/0/node/bin/ && alias npm='node /home/vcap/deps/0/node/lib/node_modules/npm/bin/npm-cli.js' && cd app/ && npm install --only=dev && npm test"

# # Setup enviroment for testing
# export PATH=$PATH:/home/vcap/deps/0/node/bin/
# alias npm='node /home/vcap/deps/0/node/lib/node_modules/npm/bin/npm-cli.js'
# cd app/
# npm install --only=dev
# # Execute tests
# npm test



# # Show resource directories
# ls -al ci-repo/concourse
# ls -al ci-project/

# # Check node and npm versions
# node --version
# nodejs --version
# npm --version

# # Setup app dependencies
# cd ci-project/
# npm install

# # Install forever tool and start web app in background
# npm install forever -g
# forever start app/server.js
# forever list

# # Pause for server to app to start
# sleep 5

# # Run unit and intergartion tests
# npm test