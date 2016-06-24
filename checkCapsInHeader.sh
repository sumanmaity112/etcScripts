#!/usr/bin/env bash
regex=${1:-".*[A-Z].*"}
rowNumber=${2:-'1'}
for file in `ls`; do
    str=`awk ${rowNumber} ${file}`
    IFS=',' read -ra terms <<< "$str"
    for term in "${terms[@]}"; do
        [[ ${term} =~ ^${regex}$ ]] && echo ${term}"    -->   "${file}
    done
done
