#! /bin/bash

printf '\n%90s\n' | tr ' ' = >> $2
printf '\n%90s\n' | tr ' ' ? >> $2
printf '\n%90s\n\n' | tr ' ' = >> $2

for sample_name in `ls ./daemon_sample | sort -r -d | head -$1`
do
    cat ./daemon_sample/$sample_name >> $2
    echo "" >> $2
done

printf '\n%90s\n' | tr ' ' = >> $2
printf '\n%90s\n' | tr ' ' ! >> $2
printf '\n%90s\n\n' | tr ' ' = >> $2