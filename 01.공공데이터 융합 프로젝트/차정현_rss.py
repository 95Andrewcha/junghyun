import urllib.request as ur
from bs4 import BeautifulSoup as bs

japi= "http://www.weather.go.kr/weather/forecast/mid-term-rss3.jsp?stnid=109"
target=ur.urlopen(japi)
soup = bs(target, "html.parser")

for location in soup.find_all("location"):
    print(location.city.string)
    print("-"*20)
    for data in location.find_all("data"):
        print("시간", data.tmef.string)
        print("날씨", data.wf.string)
        print("최저", data.tmn.string)
        print("최고", data.tmx.string)
        print("신뢰도", "data.rnst.string")
        print("")

