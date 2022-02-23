import pymysql #한빛 디비랑 연결
from tkinter import *
from tkinter import messagebox



def insertData():
    con, cur =None, None
    data1, data2, data3, data4 ="", "", "", ""
    sql=""

    conn=pymysql.connect(host='127.0.0.1', user='root', password='1234', db='hanbitDB', charset='utf8')
    cur=conn.cursor()  # 이거 안하면 execute 함수 못씀.

    data1 = edt1.get(); data2=edt2.get(); data3=edt3.get(); data4=edt4.get()
    try:
        sql="INSERT INTO userTable VALUES('" + data1 + "','"  + data2 + "','" + data3 + "'," + data4 + ")"
        cur.execute(sql)
    except :
        messagebox.showerror('오류' '데이터 입력 오류가 발생함')
    else:
        messagebox.showinfo('성공', '데이터 입력 성공')
    conn.commit()
    conn.close()

def selectData():
    strData1, strData2, strData3, strData4 = [], [], [], [] #STRdATA1 ,2,3,4 객체 생성
    conn=pymysql.connect(host='127.0.0.1', user='root', password='1234', db='hanbitDB', charset='utf8')
    cur=conn.cursor()  # 이거 안하면 execute 함수 못씀.
    cur.execute("SELECT * FROM userTable")
    strData1.append("사용자ID")
    strData2.append("사용자 이름")
    strData3.append("이메일")
    strData4.append("출생년도")
    strData1.append("---------")
    strData2.append("---------")
    strData3.append("---------")
    strData4.append("---------")
    while(True):
        row = cur.fetchone() #row 에 대입
        if row ==None:
            break
        strData1.append(row[0]) #ID
        strData2.append(row[1]) #NAME
        strData3.append(row[2]) #EAMIL
        strData4.append(row[3]) #BIRTH

    listData1.delete(0,listData1.size() -1)
    listData2.delete(0,listData2.size() -1)
    listData3.delete(0,listData3.size() -1)
    listData4.delete(0,listData4.size() -1)

    for item1, item2, item3, item4 in zip(strData1, strData2, strData3, strData4):#item1 에 strData1 대입하고 tiem2에 strData2 대입
        listData1.insert(END, item1)
        listData2.insert(END, item2)
        listData3.insert(END, item3)
        listData4.insert(END, item4)
    conn.close()

#main code
window =Tk() #연결
window.geometry("600x300") #창 크기.
window.title("insert GUI data") #TITLE.

edtFrame = Frame(window)  #edtFrame => 구조 짜는거 
edtFrame.pack() #이걸 해야 대화상자 위젯이 뜸 이전 까지는 설정만 한거 
listFrame = Frame(window) #listFRame 구조짜기
listFrame.pack(side = BOTTOM, fill=BOTH, expand=1) #아래쪽 기준으로 기준은 중간, 확장을 해줘라.

edt1 =Entry(edtFrame, width=10) #위에 입력칸 첫번쨰,
edt1.pack(side=LEFT, padx=10, pady=10)
edt2 =Entry(edtFrame, width=10)
edt2.pack(side=LEFT, padx=10, pady=10)
edt3 =Entry(edtFrame, width=10)
edt3.pack(side=LEFT, padx=10, pady=10)
edt4 =Entry(edtFrame, width=10)
edt4.pack(side=LEFT, padx=10, pady=10)

btnInsert =Button(edtFrame, text="입력", command=insertData)
btnInsert.pack(side=LEFT, padx=10, pady=10)
btnSelect =Button(edtFrame, text="조회", command=selectData)
btnSelect.pack(side=LEFT, padx=10, pady=10)

listData1 =Listbox(listFrame, bg='red')
listData1.pack(side=LEFT, fill=BOTH, expand=1) #side=left 수평정렬 #side=top 수직 정렬
listData2 =Listbox(listFrame, bg='orange')
listData2.pack(side=LEFT, fill=BOTH, expand=1) #fill 폭 조절 위젯의 폭을 창에 맞춘다.
listData3 =Listbox(listFrame, bg='white')
listData3.pack(side=LEFT, fill=BOTH, expand=1) #expand  확장
listData4 =Listbox(listFrame, bg='blue')
listData4.pack(side=LEFT, fill=BOTH, expand=1)

window.mainloop()








