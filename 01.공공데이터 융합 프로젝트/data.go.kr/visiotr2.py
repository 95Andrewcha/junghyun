import json
with open('서울 특별시_관광지입장정보_2020_2020.json', encoding='utf-8') as json_file:
    cha = json.load(json_file)
    print(cha)