#!/bin/bash
cd /home/ubuntu/app
nohup java -jar app.jar > /home/ubuntu/app.log 2>&1 &
