#!/bin/bash

scp -i /opt/cred.pem jenkins/deploy/publish.sh ubuntu@54.197.24.30:/tmp/publish.sh

ssh -i /opt/cred.pem ubuntu@54.197.24.30 "echo maven-app >/tmp/auth.txt && echo $PASS >/tmp/auth.txt && echo $BUILD_TAG >/tmp/auth.txt && chmod +x /tmp/publish.sh && /tmp/publish.sh"
