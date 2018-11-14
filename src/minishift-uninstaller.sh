#!/bin/bash

rm -rf /usr/bin/minishift
if [ $? == 0 ]
then
    print 'Cleaned installation directory...'
    rm -rf /etc/profile.d/minishiftvars.sh
    if [ $? == 0 ]
    then
        print 'Removed environment variables...'
        print 'Minishift uninstalled succesfully. Re-logon for applying the changes'
    else
        print 'Failed to remove environment variables...'
        print 'Minishift uninstalled with errors.'
    fi
else
    print 'Failed to uninstall Minishift.'
fi