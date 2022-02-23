import os
import sys
import urllib.request
client_id="HY3K2v1DfbggVwFkivgN"
client_sercret="HC_Gs9inHl"
encText = urllib.parse.quote("동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세(후렴) 무궁화 삼천리 화려강산 대한사람 대한으로")
data = "source=ko&target=en&text=" + encText
url="https://openapi.naver.com/v1/papago/n2mt"
request = urllib.request.Request(url)
request.add_header("X-Naver-Client-id", client_id)
request.add_header("x-NAVER-client-Secret", client_sercret)
response = urllib.request.urlopen(request, data=data.encode("utf-8"))
rescode = response.getcode()
if(rescode==200):
    response_body = response.read()
    print(response_body.decode('utf-8'))
else:
    print("Error Code"+ rescode)