#!/bin/sh
if [ $# != 0 ]; then
    echo "youtube : $@"
    for term in $@ ; do
        search="$search%20$term"
    done
    open -a Brave\ Browser.app "http://www.youtube.com/search?q=$search"
else
    echo "youtube : open"
    open -a Brave\ Browser.app "http://www.youtube.com"
fi
