# nl2sh-1

## Challenge Description

The future of shell is natural language! Just talk to it and we'll do the rest! No code though, that's cheating.

`nc nl2sh-1.cha.hackpack.club 41715` -> which I made into a [connect](./connect.sh) script

## Solution

After first getting on the server, I tried to run some [commands](./commands.png) but it says that I cannot run any bash commands. I tried to list the files and that command worked. After doing some research, I found that nl2sh means Natural Language 2 Semantic Hypergraph, which is how natural language can be translated into commands.

Instead of `ls` I told the command line to `list files` and it translated it to `ls`. There are a few files in the current directory, such as `notes.txt`. I can't use `cat` so I told the ai to [type notes txt](./notes.png) and it said there is key around here somewhere and I might need to search for it.

I tried to `find the flag in key txt` and it displayed the [flag](./find.png).

One of my friends also said that I could just type `flag` and the command line would print the [flag](./solution.png).

Here is the [flag](./flag.txt) in a text file.
