#!/bin/bash

# Run this script from the same directory as this file
# 
# Usage: This script is used to auto-generate markdown files for each 
# of the challenges in a ctf directory. 
#
# ./generate_readme.sh ctf_directory

# echo $1

# if the number of arguments == 1
# and the first argument is a directory
if [[ $# -eq 1 && -d $1 ]]; then
    #for dir in ./*; do touch $dir/$(basename $dir.md); done
    #for dir in ./test/*; do echo $dir; done
    #for dir in ./$1/*; do echo $dir; done
    #for dir in ./$1/*; do touch "$dir/$(basename $dir.md)"; done
   
    # create the ctf name
    rm "./$1/$(basename $1.md)"

    # create each challenge name 
    for dir in $(find ./$1/ -maxdepth 1 -type d -not -path "./$1/"); do rm "$dir/$(basename $dir.md)"; done

else 
    echo "Please enter a directory as an argument"
fi
