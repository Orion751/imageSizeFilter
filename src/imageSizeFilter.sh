#!/bin/bash

# syntax: imageSizeFilter <smallImageDirectory> <bigImageDirectory>

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

smallImageDirectory="$1"
bigImageDirectory="$2"

mkdir "$smallImageDirectory" "$bigImageDirectory"

