#!/bin/bash

# Run this script from the same directory as this file.
# Run this file from the ctf-writeups/ directory
# 
# Usage: This script is used to auto-generate markdown files for each 
# of the challenges in a ctf directory. 
#
# ./scripts/copy_template.sh ctf_directory

# echo $1

# if the number of arguments == 1
# and the first argument is a directory
if [[ $# -eq 1 && -d $1 ]]; then
    #for dir in ./*; do touch $dir/$(basename $dir.md); done
    #for dir in ./test/*; do echo $dir; done
    #for dir in ./$1/*; do echo $dir; done
    #for dir in ./$1/*; do touch "$dir/$(basename $dir.md)"; done
   
    # create the ctf name
    cp ./scripts/ctf_template.md "./$(basename $1)/$(basename $1).md"
    echo "Copying CTF template to ./$(basename $1)/$(basename $1).md"

    # create each challenge name 
    #for dir in $(find ./$1/ -maxdepth 1 -type d -not -path "./$1/"); do "cp ./scripts/challenge_template.md $dir/$(basename $dir.md)"; echo "Copying template to $dir/$(basename $dir.md)"; done
    for dir in $(find ./$1/ -maxdepth 1 -type d -not -path "./$1/"); 
    do 
        # Copy the template to the markdown file
        cp ./scripts/challenge_template.md "./$(basename $1)/$(basename $dir)/$(basename $dir).md";

        # log the copy to the markdown file
        echo "Copying challenge template to ./$(basename $1)/$(basename $dir)/$(basename $dir).md";

        # Add the name of the challenges to the CTF 
        echo "* [$(basename $dir)](./$(basename $dir)/$(basename $dir).md)" >> "./$(basename $1)/$(basename $1).md"

        # log the appended data
        echo "Appending challenge $(basename $dir) to $(basename $1).md"

    done

    echo >> "./$(basename $1)/$(basename $1).md"

else 
    echo "Please enter a directory as an argument"
fi
