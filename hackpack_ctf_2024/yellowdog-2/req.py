import requests
import json
import hashlib

url = "https://yellowdog2.cha.hackpack.club/yellowdog"

#number_payload = []
#for i in range(0, 100):
#    number_payload.append(str(i).zfill(2))

# hashes = []
# with open("hashes.txt") as h:
#     for line in h:
#         hashes.append(line.strip())

#print(hashes)

for i in range(0, 100):

    carolina_id = 'carolina' + str(i).zfill(2)
    carolina_hash = hashlib.sha256(carolina_id.encode()).hexdigest()
    # carolina_hash = hashes[i]
    print(carolina_hash)
    #print(carolina_hash)
    payload = {'img_id': carolina_id, 'img_hash': carolina_hash}

    print(payload)
    r = requests.post(url, json=payload)

    print(r.text)

