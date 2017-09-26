#!/bin/bash

set -e # fail fast
set -x # print commands

ls -al ci-repo/concourse
ls -al ci-project/

# Setup container to run & test node app
sudo apt-get -y update
apt-get install curl
curl -sL https://deb.nodesource.com/setup_6.x | bash -
apt-get install -y nodejs
npm install npm@latest -g
apt-get install -y build-essential

