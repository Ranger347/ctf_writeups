# Spongebobs Homepage

## Challenge Description

Welcome to this great website about myself! Hope you enjoy ;) DIRBUSTER or any similar tools are NOT allowed.
http://spongebob-blog.ctf.umasscybersec.org

## Solution

I didn't get this during the competition but the solution was easy enough, I figured I'd cover it as a writeup.

Basically after you go to the link above, there is not much on the website normally. After firing up burp, you can see the [images](./assets/image.png) being loaded on the website. Apparently after the image, you can just [execute commands](./assets/injection.png), which makes me feel stupid because that seems fairly easy.
 
Anyway, after makeshift looking around on the server, you can find and cat the [flag](./assets/flag.png).

