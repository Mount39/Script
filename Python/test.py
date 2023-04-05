# s = float(input("请输入半径："))
# z = 2 * 3.14 * s
# m = int(3.14 * s ** 2)
# print("周长:",z, "面积：",m)

#99乘法表
# for i in (range(1,10)):

#     for d in range(1,i+1):

               
#         print("{} * {} = {} ".format(i,d,d*i),end='')
#     print("")
    
     
# for a in range(1,5):
#     for b in range(1,5):
#         if b!=a:
#             for c in range(1,5):
#                 for d in range(1,5):
#                     if d!=c and c!=a and c!=b and d!=a and d!=b :
#                         print(a,b,c,d)


# import datetime   #输入某年某月某日判断这是一年的第几天

# a = []

# def test1(name,age,banji,phone,yu,shu,yy,ls='ls',**sc,):   #(name,age,banji,phone,yu,shu,yy,ls='ls',**sc,)形参   name 位置参数  ls='ls' 默认参数  *sc 任意非关键字参数     **sc任意关键字参数
#     # a = [name,age,ls,banji,phone,yu,shu,yy,sc]
#     a.extend([name,age,ls,banji,phone,yu,shu,yy,sc])
#     return a
#     # print(a)

# test1(**{"name":'lisi',"age":18,"ls":'Mir',"banji":"yiban","phone":12387818723,"yu":85,"shu":90,"yy":70,"sc":"abc"})  #实参   "ls":'Mir'#关键字参数   name 位置参数
# print(test1(**{"name":'wangwu',"age":23,"ls":'Mir',"banji":"yiban","phone":12341234,"yu":80,"shu":70,"yy":90,"sc":"abc"}))


#计算时间    
# import datetime
# date = input("请输入xx年/xx月/xx日:")
# year,month,day=map(int, date.split('/'))
# date1 = datetime.date(year,month,day)
# date_count = (date1 - datetime.date(year, 1,1)).days+1
# print(date_count)

# value = eval(input("请输入一个数："))
# print(type(value))
# #data_type = type(value)

# if isinstance(value,str):
#     print('''字符串类型 
#     不可改变
# ''')    
# elif isinstance(value,tuple):
#     print('''元组类型
#     不可改变
# ''')

# elif isinstance(value,list):
#     print('''列表类型
#     可改变
# ''')
    
# elif isinstance(value,dict):
#     print('''字典类型
#     可改变
# ''')

# elif isinstance(value,set):
#     print('''集合类型
#     可改变
# ''')

# elif isinstance(value,int):
#     print('''整数类型
#     不可改变

# ''')



# import datetime
# today = datetime.date.today()
# brithday = input("请输入你的生日日期YYYY-MM-DD:")
# brithday1 = datetime.datetime.strptime(brithday,"%Y-%m-%d").date()
# days1 = (brithday1.replace(year=today.year) - today).days
# if days1 <0:
#     days1 = (brithday1.replace(year=today.year+1)-today).days

# print("距离下次生日还有",days1,"天")


# 函数实现计算时间
# import datetime
# date = input("请输入xxxx年/xx月xx日:")
# a,b,c = map(int,date.split('/'))
# def date1(year,month,day):
#     date2 = datetime.date(year,month,day)
#     date_count = (date2 - datetime.date(year,1,1)).days+1
#     # print(date_count)
#     return date_count
# sum = date1(year=a,month=b,day=c)
# print(sum)


#函数判断类型
# value = eval(input("请输入一个数："))
# print(type(value))
# date_type = type(value)
# def values(value1):
#     if isinstance(value1,str):
#         print('''
#         字符串类型
#         不可改变
#         ''')
#     elif isinstance(value1,tuple):
#         print('''
#         元组类型
#         不可改变
#         ''')
#     elif isinstance(value1,list):
#         print('''
#         列表类型
#         可改变
#         ''')
#     elif isinstance(value1,set):
#         print('''
#         集合类型
#         可改变
#         ''')
#     elif isinstance(value1,int):
#         print('''
#         整数类型
#         不可改变
#         ''')
#     else:
#         print("未知类型")
# values(value1=value)

#函数计算生日距离
# import datetime
# today=datetime.date.today()
# day1 = input("请输入你的生日日期YYYY-MM-DD:")
# def daye(daye1,daye2):
#     adc = datetime.datetime.strptime(daye2,"%Y-%m-%d").date()
#     days1 = (adc.replace(year=daye1.year) - daye1).days
#     if days1 <0:
#         days1 = (adc.replace(year=daye1.year+1)-daye1).days
#     return days1
    
# b = daye(daye1=today,daye2=day1)
# print(b)


# for i in range(1,100):
#     if i == 80:
#         continue
#     elif i == 92:
#         break
#     print(i)


# n=0
# while n<9:
#     print(n)
#     n=n+1
# a=input("Plase input a value")
# def My(b):
#     while True:
#         if b > 10:
#             print("大了")
#         elif b < 10:
#             print("小了")
#         else:
#             break
# My(int(a))


# n = 0
# for i in range(1,100):
#     n = n+i
# print(n)

# tow=sum(range(1,100))
# print(tow)


# class Mydog():
#     def __init__(self,name,type):
#         self.name = name
#         self.type = type
#     def sleep(sleep1):
#         print("Sleep {} Min".format(sleep1))