#!/bin/bash

# syntax: imageSizeFilter <srcDirectory> <smallImageDirectory> <bigImageDirectory>

: '
Pseudocode



'
verbose=false

while getopts ":v" opt; do
    case $opt in
        v)
            verbose=true

            shift $((OPTIND-1))
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2

            exit 1
            ;;
    esac
done

srcDirectory="$1"
smallImageDirectory="$2"
bigImageDirectory="$3"

if [ "$verbose" = true ]; then
    echo mkdir "$smallImageDirectory" "$bigImageDirectory"
fi

mkdir "$smallImageDirectory" "$bigImageDirectory"

#find images -type f -exec identify -format '%w %h %i' '{}' \; 2>&1 | awk '$1<500 && $2<500' 1>/dev/null 2>&1 | tee log3.txt
#foo=250; cat imageSizesLog.txt | awk '($1=='$foo' && $2>='$foo') || ($2=='$foo' && $1>='$foo')' | cut -d \  -f 3 | xargs eog

# TODO Find the minimum width and minimum height of usuable images
# TODO Get the folders that only contain valid images for MVP?

imageData=`find "$srcDirectory" -type f -exec identify -format '%w %h %i' '{}' \;`

