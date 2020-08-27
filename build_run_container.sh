#!/bin/bash

sudo docker build -t webapp .
sudo docker run -d -p 3000:3000 $(sudo docker images --format {{.ID}})
