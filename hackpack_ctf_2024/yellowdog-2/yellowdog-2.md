# Yellowdog-2

## Challenge Description

Welcome to YellowDogLLM, a service for providing LLM-generated description for images of (mostly) yellow dogs (aka Carolina dogs or American dingos). Variation 2.

## Solution

This challenge is similar to the last, except there is different [source](./source.png). This time the source sends not only the dog id, but also a [sha-256 hash](./encrypt.js) of the dog id to the server.

I got burp to once again capture the [requests](./burp_requests.png) to see if I could send the `carolina89` dog back with the appropriate hash. I tried the `carolina89` id for the dog with the appropriate hash in the request, but it was not the correct dog this time.

I tried a few other dog names, but none of them worked, so I just decided to script it to see which one would output the flag. For a long time, I tried to get the intruder working on burpsuite to try to automate it that way, but I didn't have any luck with that.

In the end I went back to good old python. [My python script](./req.py) just sends a post request to the server with the appropriate payload for the `carolina##` img_id and the appropriate hash in a loop for every 2 digit number after the carolina.

After running the script and waiting for each dog, eventually the appropriate [response](./response.txt) came back with a flag inside it.

Another mostly boring and generic [flag](./flag.txt).

