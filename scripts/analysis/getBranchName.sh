#!/bin/bash

# $1: username, $2: password/token, $3: pull request number

if [ -z $3 ] ; then
    echo "stable-2.13";
else
    curl 2>/dev/null -u $1:$2 https://api.github.com/repos/nextcloud/android-library/pulls/$3 | grep \"ref\": | grep -v '"stable-2.13"' | cut -d"\"" -f4
fi
