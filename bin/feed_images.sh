#!/usr/bin/env bash

cat _site/feed.xml | sed "s/img src='\/images\//img src='http:\/\/alexyoung.org\/images\//g" > _site/feed_1.xml
cat _site/feed_1.xml | sed 's/img src="\/images\//img src="http:\/\/alexyoung.org\/images\//g' > _site/feed.xml
rm _site/feed_1.xml

cat _site/feed.xml | sed "s/img src='\/images\//img src='http:\/\/alexyoung.org\/images\//g" > _site/feed_1.xml
cat _site/feed_1.xml | sed 's/img src="\/images\//img src="http:\/\/alexyoung.org\/images\//g' > _site/feed.xml
rm _site/feed_1.xml
