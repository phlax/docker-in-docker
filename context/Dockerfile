# phlax/docker-in-docker
#
# VERSION       0.0.1

ARG BUILD_FROM=phlax/systemd

# Root stage
FROM $BUILD_FROM

MAINTAINER Ryan Northey <ryan@synca.io>

RUN apt update \
        && APT_INSTALL="apt install -y -qq \
                --no-install-recommends" \
        && $APT_INSTALL software-properties-common gpg gpg-agent wget \
        && wget -qO - https://download.docker.com/linux/debian/gpg | apt-key add - \
        && apt-add-repository "deb [arch=amd64] https://download.docker.com/linux/debian buster stable" \
        && apt update \
        && apt dist-upgrade -y -qq \
        && $APT_INSTALL docker-ce \
        && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
        && apt-get clean
