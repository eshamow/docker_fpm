#!/bin/sh

systemctl enable /etc/systemd/system/docker.service
systemctl start docker.service

ln -s /opt/docker/bin/docker /usr/bin/
