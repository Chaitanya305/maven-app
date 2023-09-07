#!/bin/bash

echo "*******************"
echo "***pushing image***"
echo "*******************"
IMAGE='maven-app'

echo "***logging in ****"
docker login -u chaitanya305 -p $PASS

echo "***taging image***"

docker tag $IMAGE:$BUILD_TAG chaitanya305/$IMAGE:$BUILD_TAG

echo "***pushing Image***"

docker push chaitanya305/$IMAGE:$BUILD_TAG
