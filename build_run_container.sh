#!/bin/bash

docker rm -f $(docker ps --format "{{.ID}}")
sudo docker run -d -p 3000:3000 ibbocus/jenkins-docker-pipeline
