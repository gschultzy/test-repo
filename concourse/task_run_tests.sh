#!/bin/bash

set -e # fail fast
set -x # print commands

ls -al ci-repo/concourse
ls -al ci-project/

# Check node and npm versions
node --version
nodejs --version
npm --version


# Install forever tool
npm install forever -g
forever list

# Setup node dependencies
cd ci-project/
npm install

# Start web app
forever start app/server.js
forever list

# Check connectivity
sleep 5
# curl http://localhost:3000
curl http://localhost:3001 # simulate failed connection


# Run unit and intergartion tests
npm test