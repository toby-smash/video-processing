#!/bin/bash

video=$1
fps=$2

if [[ $video == 0 ]]; then
	echo "Please provide video."
	exit 0
fi

if [[ $fps == 0 ]]; then
	echo "Please provide frames per second."
	exit 0
fi

ffmpeg -i $video -vf fps=$fps $video%04d.jpg -hide_banner
