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

mkdir "$smallImageDirectory" "$bigImageDirectory"

