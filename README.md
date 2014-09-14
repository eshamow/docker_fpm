curl or wget https://get.docker.io/builds/Linux/x86_64/docker-latest and save the file as opt/docker/bin/docker

Then execute in the same directory as this README.md:

fpm -s dir -t rpm -n docker --before-install ./cgroupfs-mount.sh --after-install ./install.sh -v 1.2.0 --before-remove ./uninstall.sh -p docker-VERSION_ARCH.rpm -d "iptables >= 1.4" -d "git >= 1.8" -d "procps-ng >= 3.3" -d "xz >= 5.1" etc/ opt/
