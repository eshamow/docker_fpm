#!/bin/sh

systemctl stop docker.service
systemctl disable /etc/systemd/system/docker.service
rm -f /usr/bin/docker
