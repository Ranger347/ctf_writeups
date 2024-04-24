#!/bin/bash

# Run this script from the parent directory of this file. 
# Run this file from the ctf-writeups/ directory
# 
# Usage: This script is used to auto-generate markdown files for each 
# of the challenges in a ctf directory. 
#
# ./scripts/generate_readme.sh ctf_directory

# echo $1

# if the number of arguments == 1
# and the first argument is a directory
if [[ $# -eq 1 && -d $1 ]]; then
    #for dir in ./*; do touch $dir/$(basename $dir.md); done
    #for dir in ./test/*; do echo $dir; done
    #for dir in ./$1/*; do echo $dir; done
    #for dir in ./$1/*; do touch "$dir/$(basename $dir.md)"; done
   
    # create the ctf name
    rm "./$(basename $1)/$(basename $1).md"
    echo "Removing ./$(basename $1)/$(basename $1).md"

    # create each challenge name 
    for dir in $(find ./$1/ -maxdepth 1 -type d -not -path "./$1/"); 
    do 
        # remove the markdown file
        rm "./$(basename $1)/$(basename $dir)/$(basename $dir).md";
        # log the file removal
        echo "Removing ./$(basename $1)/$(basename $dir)/$(basename $dir).md";

        # remove the flag.txt file
        # rm "./$(basename $1)/$(basename $dir)/flag.txt";

        # log the generation of the flag file
        # echo "Removing ./$(basename $1)/$(basename $dir)/flag.txt";
    done

else 
    echo "Please enter a directory as an argument"
fi
