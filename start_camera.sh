#!/bin/sh

if [ -e /dev/video0 ]; then
	/usr/bin/vlc -f v4l2:///dev/video0
fi
