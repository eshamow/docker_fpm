These directions per https://docs.docker.com/installation/binaries

You will need:
* curl or wget
* fpm and the underlying ruby requirements

Check the version of Docker you are downloading. These directions are current for 1.2.0 - but note that dependencies for future versions will change.

Example using curl from same directory as this README:

curl -o opt/docker/bin/docker https://get.docker.io/builds/Linux/x86_64/docker-latest

Then execute in the same directory as this README.md. Replace the values with the correct values from the documentation.

A working example for Docker 1.2.0:

fpm -s dir -t rpm -n docker --before-install ./cgroupfs-mount.sh --after-install ./install.sh -v 1.2.0 --before-remove ./uninstall.sh -p docker-VERSION_ARCH.rpm -d "iptables >= 1.4" -d "git >= 1.8" -d "procps-ng >= 3.3" -d "xz >= 5.1" etc/ opt/
