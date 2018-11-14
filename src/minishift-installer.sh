#!/bin/bash

sudo mkdir minishift
sudo wget -O /usr/bin/minishift/minishift.tgz "https://github.com/minishift/minishift/releases/download/v1.27.0/minishift-1.27.0-linux-amd64.tgz"
sudo tar xvzf minishift.tgz
sudo mv minishift-1.27.0-linux-amd64/* ./ 
sudo rm -rf minishift-1.27.0-linux-amd64
sudo rm -rf minishift.tgz
export PATH="$PATH:/usr/bin/minishift/"
