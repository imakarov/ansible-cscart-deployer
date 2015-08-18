#!/usr/bin/env bash

while read line
do
    loadfile=$( echo $line | awk '{print $2}' | sed 's/_module//g' )
    echo $loadfile.load
done <$1
