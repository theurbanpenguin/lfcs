#!/bin/bash
#/home/vagrant/bin/setexec.sh
# Set Execute permissions where execute is not set on files
find /home/vagrant/bin -type f ! -executable -exec chmod a+x {} \;