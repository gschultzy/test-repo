#!/bin/bash

set -e # fail fast
set -x # print commands

ls -al ci-repo/concourse
ls -al ci-project/

# Check node and npm versions
node --version
nodejs --version
npm --version

# Setup node dependencies
cd ci-project/
npm install

node app/server.js
