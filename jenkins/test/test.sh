#!/bin/bash

echo "**************************"

echo "** testing jar **"
echo "***************************"

docker run --rm -v /home/jenkins/jenkins_data/jenkins-docker/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3-alpine "$@"
