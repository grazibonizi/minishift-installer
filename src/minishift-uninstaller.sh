#!/bin/bash

minishiftdir=/usr/bin/minishift

rm -rf $minishiftdir

PATH=`echo $PATH | sed -e 's/:$minishiftdir$//'`
