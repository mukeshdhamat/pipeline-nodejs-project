#!/bin/bash

echo "******************************"
echo "*****BUILD Creation*************"
echo "******************************"

WORKSPACE=/home/cyg_adm/jenkins_home/workspace/pipeline-nodejs-project
docker run --rm -v $WORKSPACE/nodejs-app:/app -v /root/.m2:/root/.m2 -w /app node:12.18.1 "$@"

