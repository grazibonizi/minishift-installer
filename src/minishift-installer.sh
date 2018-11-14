#!/bin/bash

minishiftcurrentversion=$(minishift version | awk '{print $0}')

if [ $? != 0 ]
then
    echo "Minishift is already installed. Version: " + $minishiftcurrentversion
    exit 1
fi

minishiftdir=/usr/bin/minishift
mkdir $minishiftdir
wget -O $minishiftdir/minishift.tgz "https://github.com/minishift/minishift/releases/download/v1.27.0/minishift-1.27.0-linux-amd64.tgz"
tar xvzf $minishiftdir/minishift.tgz -C $minishiftdir/
mv $minishiftdir/minishift-1.27.0-linux-amd64/* $minishiftdir/
rm -rf $minishiftdir/minishift-1.27.0-linux-amd64
rm -rf $minishiftdir/minishift.tgz
echo "export PATH=$PATH:$minishiftdir" > /etc/profile.d/minishiftvars.sh