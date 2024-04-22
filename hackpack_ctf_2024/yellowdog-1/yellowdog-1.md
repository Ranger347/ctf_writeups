# Yellowdog-1

## Challenge Description

Welcome to YellowDogLLM, a service for providing LLM-generated description for images of (mostly) yellow dogs (aka Carolina dogs or American dingos). Variation 1.

## Solution

I opened the website to find a bunch of dogs. If you click on a dog and hit Describe Image, there will appear a description of the dog. There was one space where there should have been a dog that just said "Redacted". In the source code there is a div that says "Getting the Flag: One of the images contained the flag as a text overlay, but it has been redacted from this website :(".

I scrolled down to find the number of the dog that was the redacted number. Turns out there was a dog with the redacted number `carolina89` as seen [here](./redacted_number.png).

I also fired up burpsuite to see what was happening in the background. Every time there was a submit request, there was a post request to `/yellowdog` with the dog id passed in json format in the `img_id` parameter. One example can be seen [here](./burp_requests.png).

Based on the div about the flag, I just changed the number of the dog in the `img_id` to be `carolina89` and the flag was in the [response](./burp_answer.png).

Random boring generic hashed [flag](./flag.txt).
