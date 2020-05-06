#!/bin/bash
cd /home/ec2-user/front
sleep 40s
npm run serve
echo "end" > end.json
