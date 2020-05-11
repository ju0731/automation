#!/bin/bash
sudo mv /home/ec2-user/front/front.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start front.service
sudo systemctl enable front.service
sudo systemctl restart front.service
