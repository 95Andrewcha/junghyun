import pymysql

con, cur =None, None
data1, data2, data3, data4 ="", "", "" ,""
row = None





#main code
conn=pymysql.connect(host='127.0.0.1', user='root', password='1234', db='hanbitDB', charset='utf8')
cur=conn.cursor()  # 이거 안하면 execute 함수 못씀.
cur.execute("select * from userTable")

print("사용자 id     사용자이름      이메일      출생년도")
print("------------------------------------------------------")


while(True):  # 무한 참 콜론이 잇다는건 잣ㄱ이 존재
    row = cur.fetchone() # fetchon -= 각각 한행식 처리. 0, 1,2 3 index
    if row==None:
        break

    data1=row[0]
    data2=row[1]
    data3=row[2]
    data4=row[3]
    
    print("%5s %15s %20s %d" %(data1, data2, data3, data4))

conn.close()