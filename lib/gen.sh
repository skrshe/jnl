#!/bin/bash

cp -f lib/start.html index.html
n=1
for f in md/*
do pandoc -s $f --template lib/post.html -o out/$n.html && cat out/$n.html >> index.html && n=$((n+1))
done

cat lib/end.html >> index.html
