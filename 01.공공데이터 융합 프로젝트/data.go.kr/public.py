import usecsv
import re

apt =usecsv.switch(usecsv.opencsv('apt_202110.csv'))
print(apt[:3])

print(len(apt))

print(apt[0])

for i in apt[:6]:
    print(i[0])

for i in apt[:6]:
    print(i[0],i[4], i[-5])

new_list =[]

for i in apt:
    try:
        if i[5]>=120 and i[-5] <=30000 and re.match('대전광역시', i[0]):
            new_list.append(i[0], i[4], i[-5])
    except:pass

usecsv.writecsv('over120_lover30000.csv', new_list)