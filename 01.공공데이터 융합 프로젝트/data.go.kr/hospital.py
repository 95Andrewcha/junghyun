import requests

url ="http://apis.data.go.kr/B551182/pubReliefHospService/getpubReliefHospList'serviceKey=Oa%2BECc4qgGuRupi6ZZFCzOTimKOD32kJDISVCY1zkcgKYomuNyi3JhN5mmCP84klLLYyA6pDOQOWvq43qm91FQ%3D%3D&pageNo=1&numOfRows=10&spclAdmTyCd=A0"
params={}

response =requests.get(url, params-params)
print(response.content)
