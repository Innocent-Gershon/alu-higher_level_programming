#!/usr/bin/python3
import urllib.request

url = 'https://alu-intranet.hbtn.io/status'
req = urllib.request.Request(
    url, 
    headers={'User-Agent': 'Mozilla/5.0'}
)


if __name__ == "__main__":
    with urllib.request.urlopen('https://intranet.hbtn.io/status') as response:
        r = response.read()
        print("Body response:")
        print("\t- type: {}".format(type(r)))
        print("\t- content: {}".format(r))
        print("\t- utf8 content: {}".format(r.decode("UTF-8")))
