import os
import sys
import urllib.request
import datetime
import time
import json
from configparser import *
import math

def get_request_url(url):

    req = urllib.request.Request(url)

    try:
        response = urllib.request.urlopen(req)
        if response.getcode() == 200: #페이지가 실행 되면
            print("[%s] Url request success" % datetime.datetime.now())
            return response.read().decode('utf-8')
    except Exception as e:
        print(e)
        print("[%s] Error for URL : %s" % (datetime.datetime.now(), url))
        return None

#[CODE_1]
def getTourPointVisitor(yyyymm, sido, gungu, nPagenum, nItems):
    access_key ="zKeBsr6gCLtS7Tj384GhKwO8Z1xP50DFyFjX3KRmg6MNDcaGsx1VA0tEdRrLnSt39JSmmiu25YtRD%2BSfa85Otg%3D%3D" #서비스 키
    end_point ="http://openapi.tour.go.kr/openapi/service/TourismResourceStatsService/getPchrgTrrsrtVisitorList" #고정된 사이트(서비스사이트)

    parameters ="?_type=json&serviceKey=" + access_key
    parameters += "&YM=" + yyyymm
    parameters += "&SIDO=" +urllib.parse.quote(sido)
    parameters += "&GUNGU=" +urllib.parse.quote(gungu)
    parameters += "&RES_NM=&pageNo=" + str(nPagenum)
    parameters += "&numOfRows=" + str(nItems)

    url = end_point + parameters

    retData = get_request_url(url)

    if(retData == None):
        return None
    else:
        return json.loads(retData)

#[CDOE_2]
def getTourPointData(item, yyyymm, jsonResult):
    
    addrCd = 0 if 'addrCd' not in item.keys() else item['addrCd'] #지역코드
    gungu = '' if 'gungu' not in item.keys() else item['gungu'] #시군구
    sido = '' if 'sido' not in item.kesy() else item['sido'] #시도
    resNm = ''if 'resNm' not in item.keys() else item['resNm'] #관광지
    rnum = 0 if 'rnum' not in item.keys() else item['rnum'] #결과값 연번
    ForNum = 0 if 'csForCnt' not in item.keys() else item['csForCnt'] #외국인 방문객
    NatNum = 0 if 'csNatCnt' not in item.keys() else item['csNatCnt'] #내국인 방문객

    jsonResult.append({'yyyymm':yyyymm, 'addrCd':addrCd,
                    'gungu':gungu, 'sido':sido, 'resNm':resNm,
                    'rnum':rnum, 'ForNum':ForNum, 'NatNum':NatNum}) #대입
    return

def main():

    jsonResult = []
    sido='서울 특별시'
    gungu = ''
    nPagenum =1
    nTotal = 0
    nItems = 100

    nStartYear = 2020
    nEndYear = 2021

    for year in range(nStartYear, nEndYear):
        for month in range(1, 13):

            yyyymm = "{0}{1:0>2}".format(str(year), str(month)) #1:0>2 => {1}값을 2자리로 표현할거고 오른쪽 정렬

            nPagenum = 1

            #[Code_3]
            while True:
                jsonData = getTourPointVisitor(yyyymm, sido, gungu, nPagenum, nItems)

                if (jsonData['response']['header']['resultMsg'] == 'ok'): #데이터가 정상적으로 ㄷ ㅡ러왓으면
                    nTotal = jsonData['response']['body']['totalCount']

                    if nTotal == 0:
                        break
                
                    for item in jsonData['response']['body']['items']['item']:
                        getTourPointData(item, yyyymm, jsonResult)
                    
                    nPage = math.ceil(nTotal / 100)
                    if(nPagenum ==nPage):
                        break
                
                    nPagenum += 1
                
                else:
                    break
    
    with open('%s_관광지입장정보_%d_%d.json' % (sido, nStartYear, nEndYear-1), 'w', encoding='utf-8') as outfile:
        retJson = json.dumps(jsonResult,
                        indent=4, sort_keys=True,
                        ensure_ascii=False)
        outfile.write(retJson)

    print('%s_관광지입장정보_%d_%d.json SAVED' % (sido, nStartYear, nEndYear-1))

if __name__ == '__main__':
    main()



