
import os;
import sys;
import urllib.request

client_id = "JtSKW7LZ2Hctg2nuidsJ"
client_secret ="nPtTkD_Ymf"
encText = urllib.parse.quote("잠")
url ="https://openapi.naver.com/v1/search/blog?query=" + encText

request = urllib.request.Request(url)
request.add_header("X-naver-client-Id", client_id)
request.add_header("X-naver-Client-Secret", client_secret)
response = urllib.request.urlopen(request)
rescode=response.getcode()
if(rescode==200):
    response_body = response.read()
    print(response_body.decode('utf-8'))
else:
    print("Error Code:" + rescode)