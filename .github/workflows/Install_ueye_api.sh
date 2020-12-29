#!/bin/bash

SW_VERSION=4.94

DEBIAN_FRONTEND=noninteractive apt-get -q update
DEBIAN_FRONTEND=noninteractive apt-get -q --assume-yes install wget

wget -q --tries=2 https://de.ids-imaging.com/files/downloads/ids-software-suite/software/linux-desktop/ids-software-suite-linux-${SW_VERSION}-64.tgz -P /tmp
mkdir /tmp/ids-software-suite-linux
tar -xzf /tmp/ids-software-suite-linux-${SW_VERSION}-64.tgz -C /tmp/ids-software-suite-linux
/tmp/ids-software-suite-linux/ueye_*_amd64.run --auto
ldconfig -p | grep ueye
