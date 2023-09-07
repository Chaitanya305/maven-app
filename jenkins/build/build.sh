#!/bin/bash
# copy jar file
echo "*** copying jar file**"
cp java-app/target/*.jar jenkins/build/

echo "****building java app image****"

docker-compose -f jenkins/build/docker-compose-java.yml build --no-cache
