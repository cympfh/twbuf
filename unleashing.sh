#!/bin/bash

while :; do
    RAND=$(rand 'exp(0.013) | int')
    echo "Sleeping ${RAND}m"
    sleep ${RAND}m

    H=$(date "+%H")
    if [ $H -ge 18 ] && [ $H -le 23 ]; then
        echo "Unleashing the first tweet"
        make unleash
    else
        echo "Out of Time"
    fi
done

