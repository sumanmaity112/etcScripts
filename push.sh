#!/usr/bin/env bash
# Run this script before push to Bahmni/bahmni-core
if [[ `pwd` = '/Users/sumanm/Bahmni/bahmni-core' ]]
    then
    mvn clean install -PIT -U
    if [ $? = 0 ]
    then
        git push $@
    else
        echo "Push failed. Please check the build status"
    fi
   else
        git push $@
fi