#!/bin/sh
cd /home
cd $(ls -d */|head -n 1)
export SCRHOME="`pwd`"
cd $SCRHOME
cd .kube
cat config