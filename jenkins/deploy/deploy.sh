#!/bin/bash

echo $PASS > /tmp/.auth01

scp -i /opt/id_rsa /tmp/.auth01 prod-user@172.19.10.232:/tmp/.auth01
scp -i /opt/id_rsa jenkins/deploy/publish.sh prod-user@172.19.10.232:/tmp/publish.sh
ssh -i /opt/prod01 prod-user@172.19.10.232 "/tmp/publish.sh"

