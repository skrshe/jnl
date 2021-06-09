#!/bin/bash

cp -f lib/start.html index.html

for f in md/*
do pandoc -s $f --template lib/post.html -o post_cache.html && cat post_cache.html >> index.html
done

cat lib/end.html >> index.html
