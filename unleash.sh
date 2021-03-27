#!/bin/bash

BUFFILE=$1

if [ -z "$BUFFILE" ]; then
    echo "See README.md" >&2
    exit 1
fi

if [ ! -f "$BUFFILE" ]; then
    echo "Cannot read $BUFFILE" >&2
    exit
fi

TEXT=$( head -1 $BUFFILE )

if [ -z "$TEXT" ]; then
    echo "No content" >&2
else
    tw-cd fuck_sns
    tw --by fuck_sns "$TEXT"
    echo tw --by fuck_sns "$TEXT"

fi

cat $BUFFILE | awk c++ > /tmp/unleashed.tw.buf
mv /tmp/unleashed.tw.buf "$BUFFILE"
