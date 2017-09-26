#!/bin/bash

set -e # fail fast
set -x # print commands

ls -al ci-repo/concourse
ls -al ci-project/

# Check node and npm versions
node --version
nodejs --version
npm --version
forever list

# # Install forever tool
# npm install forever -g

# # Setup node dependencies
# cd ci-project/
# npm install

# # Start web app
# forever start app/server.js
# forever list

# # Check connectivity
# curl http://localhost:3000


# # Run unit and intergartion tests
