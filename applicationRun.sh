#!/bin/bash
cd /home/ec2-user/front

timestamp=`date +%Y%m%d%H%M`
echo "$timestamp" > time1.json

sleep 40s
npm run serve
echo "$timestamp" > time2.json
