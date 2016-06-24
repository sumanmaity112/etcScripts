#!/usr/bin/env bash
for file in `find . -type f`; do
    if [[ ${file} =~ .*\.js$ ]] && [[ ! ${file} =~ .*node_modules.*$|.*dist.*|.*components.*|.*spec.js$ ]] ; then
        filePath=`pwd`/${file}
        (node ~/framework/etcScripts/replace.js ${filePath})
    fi

#    [[ ${file} =~ .*\.js$ ]] && [[ ! ${file} =~ .*node_modules.*$|.*dist.*|.*components.* ]] && echo ${file}
done