# nl2sh-2

## Challenge Description

Welcome back to the second part of the nl2sh challenge. The ai went a little rogue on us and is blocking access to the flag. Can you find a way to get it?

`nc nl2sh-2.cha.hackpack.club 41716` -> which I made into a [connect](./connect.sh) script

## Solution

After getting into the server, I tried some of the [same things I tried for the first challenge](./beginning.png). Unfortunately, none of them worked outright, but I could still get the text in the `notes.txt` file.

The `notes.txt` says there is some sort of debug script around somewhere in the file system. I tried some find commands, but in my experience the response was always that it was a bash command. So I just looked around the common places in the file system to see if I could manually find some sort of debug thing.

After some digging I found a `/debug` [directory in the root of the file system](./debug_dir.png). Inside the debug directory there was a [debug.sh](./debug_script.png) file. The [contents](./debug_contents.png) of the file, after some googling appear to be some sort of bash connection using tcp sockets to a host and port.

I `export the HOST environment variable to be my ip address` where my ip address is my local ip address. I also found that when trying to export my ip address the first time it would only process the first 8 characters. Becuase it would only process 8 characters, I had to export it again to be `export the HOST environment variable to be HOST and .#.#` where .#.# is the second half of my ip address. You could verify it was the correct HOST by `print HOST` and the correct ip would print.

I then did the same exporting for the port and set a nc listener on my local machine. One of the websites I followed was [here](./websites.txt). This outlined what the bash command was and the nc command was.

After setting all the variables, and setting up the listener, I told the machine to `execute debug.sh` and the nc listener got a connection. I stabilized the shell with `/bin/bash` and then I could run commands where the result would print back.

I could cat the [flag](./flag.txt) and that challenge got solved.
