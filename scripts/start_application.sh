#!/bin/bash
cd /home/ubuntu/app
nohup java -jar target/*.jar > /home/ubuntu/app.log 2>&1 &
