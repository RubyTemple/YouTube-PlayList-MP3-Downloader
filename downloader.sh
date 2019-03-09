#!/bin/bash

##
#
# A simple script for download youtube playlist in mp3 format, only for linux distro
# By TheWalker0
#
##

DATE=`date +%Y-%m-%d`
mkdir youtube_$DATE
cd youtube_$DATE
youtube-dl --yes-playlist $1 
rename 's/ /_/g' *
mkdir mp3
for i in `ls | grep -v mp3`
do
    ffmpeg -i $i -q:a 0 -map a $i.mp3 && rm $i
done
mv *.mp3 mp3
echo
echo
echo -----
echo 
echo Playlist Downloader By TheWalker0
echo Goditi le tue canzoni!
echo Bye!
echo
echo -----

