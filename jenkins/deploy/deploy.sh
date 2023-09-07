#!/bin/bash

scp -i /home/jenkins/cred.pem jenkins/deploy/publish.sh ubuntu@54.197.24.30:/tmp/publish.sh

ssh -i /home/jenkins/cred.pem ubuntu@54.197.24.30 "echo maven-app >/tmp/auth.txt && echo Chaitanya@123 >>/tmp/auth.txt && echo 1 >>/tmp/auth.txt &&chmod +x /tmp/publish.sh && /tmp/publish.sh"
