#!/bin/bash

echo "******************************"
echo "*****BUILD Creation*************"
echo "******************************"
WORKSPACE=/home/cyg_adm/jenkins_home/workspace/pipeline-nodejs-project/nodejs-app
docker run -ti -v $WORKSPACE/nodejs-app:/app -v /root/.m2:/root/.m2 --name nodejs-app -w /app node:12.18.1 npm install 
docker rm -f nodejs-app
docker run -ti -v $WORKSPACE/nodejs-app:/app -v /root/.m2:/root/.m2 --name nodejs-app -w /app node:12.18.1 npm test
docker rm -f nodejs-app

