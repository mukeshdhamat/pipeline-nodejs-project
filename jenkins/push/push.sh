#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

echo "** Logging in ***"
docker login -u mukeshdhamat -p $PASS
echo "*** Tagging image ***"
docker tag nodejs-project:latest mukeshdhamat/nodejs-project:latest
echo "*** Pushing image ***"
docker push mukeshdhamat/nodejs-project:latest

