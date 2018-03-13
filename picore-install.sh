#!/bin/sh

# install packages we need
tce-load -wi alsa alsa-oss-dev alsa-utils python python-RPi.GPIO puredata bash

# install boot script
grep -v cf-c64-emu-with-fx /opt/bootlocal.sh > /tmp/bootlocal.sh
echo '/sbin/modprobe snd_seq; cd /home/tc/cf-c64-emu-with-fx; ./launch &' >> /tmp/bootlocal.sh
sudo sh -c 'cat /tmp/bootlocal.sh > /opt/bootlocal.sh'

# persist changes to disk
filetool.sh -b
