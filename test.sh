#!/bin/bash

workdir=$1

for var in $(ls $workdir)
do
if  [ -f "$var" ] && [ ! -L "$var" ]; then
let sumsizefile+=$(stat -c "%s" $var)
let count+=1
fi
done

echo Средний размер файла:
expr $sumsizefile / $count
