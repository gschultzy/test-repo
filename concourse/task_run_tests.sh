#!/bin/bash

set -e # fail fast
set -x # print commands

ls -al ci-repo/concourse
ls -al ci-project/

apt-get install npm

npm -v

