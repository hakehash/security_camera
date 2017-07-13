#!/bin/sh

if [ -e /dev/video0 ]; then
    /usr/local/bin/mjpg_streamer -i "/usr/local/lib/input_uvc.so -f 30 -r 1280x720 -d /dev/video0 -y -n" -o "/usr/local/lib/output_http.so -w /usr/local/www -p 8080" &
    /usr/bin/vlc -f http://localhost:8080/?action=stream
    #/usr/bin/vlc -f v4l2:///dev/video0
fi
