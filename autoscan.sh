#!/bin/sh

inotifywait -mqr -e close_write "/mnt/homelab/media/" | while read line
do
     curl --request POST \
  --url SERVER_URL/Library/Refresh \
  --header 'authorization: MediaBrowser Token=API_KEY'
done
