#!/bin/bash

rm -rf /usr/bin/minishift
if [ $? == 0 ]
then
    echo 'Cleaned installation directory...'
    rm -rf /etc/profile.d/minishiftvars.sh
    if [ $? == 0 ]
    then
        echo 'Removed environment variables...'
        echo 'Minishift uninstalled succesfully. Re-logon for applying the changes'
    else
        echo 'Failed to remove environment variables...'
        echo 'Minishift uninstalled with errors.'
    fi
else
    echo 'Failed to uninstall Minishift.'
fi