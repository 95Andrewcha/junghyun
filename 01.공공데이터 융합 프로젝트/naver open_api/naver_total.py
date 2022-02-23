import os
import sys
import urllib.request
import datetime
import time
import json
from configparser import *

#[CODE 1]
def get_request_url(url):

    req = urllib.request.Request(url)
    req.add_header("X-Naver-Client-Id", "JtSKW7LZ2Hctg2nuidsJ")
    req.add_header("X-Naver-Client-Secret", "nPtTkD_Ymf")
    try:
        response = urllib.request.urlopen(req)
        if response.getcode() == 200:
            print("[%s] Url Request Success" % datetime.datetime.now())
            return response.read().decode('utf-8')
    except Exception as e:
        print(e)
        print("[%s] Error for URL : %s" %(datetime.datetime.now(), url))
        return None
#[CODE 2]
def getNaverSearchResult(sNode, search_text, page_start, display):

    base = "https://openapi.naver.com/v1/search"
    node = "/%s.json" % sNode #news.json
    parameters = "?query=%s&start=%s&display=%s" %(urllib.parse.quote(search_text), page_start, display)
    url = base+ node + parameters

    retData = get_request_url(url)

    if(retData == None):
        return None
    else:
        return json.loads(retData)
#[CODE 3]
def getPostData(post, jsonResult):

    title = post['title']
    description = post['description']
    org_link = post['originallink']
    link = post['link']

    pDate = datetime.datetime.strptime(post['pubDate'], '%a, %d %b %Y %H:%M:%S +0900')
    PDate = pDate.strftime('%Y-%m-%d %H:%M:%S')

    jsonResult.append({'title':title, 'description':description, 'org_link':org_link, 'link':org_link, 'pDate':pDate})
    return

def main():
    jsonResult = []

    sNode ='news'
    search_text = '김치'
    display_count = 100

    jsonSearch = getNaverSearchResult(sNode, search_text, 1, display_count)

    while ((jsonSearch !=None) and (jsonSearch['display'] !=0)): 
        for post in jsonSearch['items']:
            getPostData(post, jsonResult)
        
        nStart =jsonSearch['start'] + jsonSearch['display']
        jsonSearch = getNaverSearchResult(sNode, search_text, nStart, display_count)

    with open('%s_naver_%s.json' % (search_text, sNode), 'w', encoding='utf8') as outfile:
        retJson = json.dumps(jsonResult, indent=4, sort_keys=True, ensure_ascii=False) ## dump => python 객체를 json으로 변환하기위해
        outfile.write(retJson)
    
    print('%s_naver_%s.json SAVED' % (search_text, sNode))


if __name__ == '__main__':
    main()
