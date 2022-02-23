import re
import usecsv

English='''he is a vegetarian. she does not eat meat. She thinks that animals should not be killed.
It is hard for her to hang out with people. Many people like to eat meat.
She told his parents not to have meat. They laughed at her. she realized they couldn\'t give up meat.'''

korean = '''그녀는 채식주의자 입니다. 그녀는 고기를 먹지 않습니다.
그녀는 동물을 죽이지말아야 한다고 생각합니다. 그녀가 사람들과 어울리는 것은 어렵습니다.
많은 사람들이 고기를 좋아합니다. 그녀는 부모에게 고기를 먹지말라고 하였습니다.
그들은 그녀를 향해 비웃어 주었습니다. 그녀는 그들이 고기를 포기 안할 거라고 느꼇습니다.'''

Korean_list = re.split('\.', korean)

English_list = re.split('\.', English)

total = []

for i in range(len(English_list)):
    total.append([English_list[i], Korean_list[i]])

usecsv.writecsv('korean_English.csv', total)