#!/bin/bash

export PASS=$(sed -n '1p' /tmp/.auth01)

docker login -u mukeshdhamat -p $PASS
docker run -d -p 3000:3000 mukeshdhamat/nodejs-project:latest

