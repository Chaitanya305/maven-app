#!/bin/bash

echo "**************************"

echo "** building jar **"
echo "***************************"

docker run --rm -v /home/jenkins/jenkins_data/jenkins_home/workspace/Maven-app/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3-alpine "$@"
