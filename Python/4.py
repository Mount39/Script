#模块和包
# import random         #生成1-10随机整数
# print(random.randint(1,10))


# import random
# FOOD = ('Apple','Banana','Orange','Grape','Watermelon')        #随机水果

# def random_food():
#     return FOOD[random.randint(0,len(FOOD)-1)]

# a = random_food()
# print(a)

# import foods.meat
# print(foods.meat.random_meat())

# from foods import meat, fruit
# from foods import fruit as r
# print(meat.random_meat())
# print(fruit.random_food())
# print(r.random_food())

#apt install python3-pip    #Debian安装pip
#pip3 install Python包   #使用pip安装python包

# fp = open("C:/1.txt",mode='a')                     #打开本地文件a
# is_readable = fp.readable()              #fp.readable()如果可读回复True
# is_writable = fp.writable()                #fp.writable()如果可写回复True
# remoe = '''
# Hello
# '''
# fp.write(remoe)       #向文件中写入内容
# # fp.read()
# fp.close()   #关闭文件

# fp = open('C:/1.txt')                  #读取文件内容
# print(fp.read())
# print(fp.readable())
# print(fp.writable())
# fp.close

# import os
# print(os.path.exists("C:/1.txt"))                #判断文件是否存在

# import os
# from os.path import getsize,join
# for root,dir,files in os.walk('foods'):
#     print(root,"consumers", end=" ")
#     print(sum([getsize(join(root,name)) for name in files]),end="")
#     print("bytes in",len(files),"non-directory files")
#     if 'CVS' in dir:
#         dir.remove('CVS')

#异常处理
#异常捕获
# try:
#     a = 1/0
# except:
#     print("出错了")

#主动抛出异常
# try:
#     raise  NameError('RaiseErr')    #主动抛出异常
# except:
#     print("Raise a error!")

#异常可选语句   else:当程序没有异常就会执行else语句中的内容，finally不论是否异常，都会执行finally语句
# try:
#     a = 1/0
#     print("haha")
# except ZeroDivisionError:
#     print("Do")
# except:
#     print("0")
# else:
#     print("no error")
# finally:
#     print("errors happen or not")

#自定义异常
# class CurrencyError(Exception):
#     #错误编码
#     curr_code = {'美元':1001,'加元':1002}
#     unknow_code = 1000

#     def __init__(self,currency):
#         self.currency = currency

#     def __str__(self):
#         if self.currency in self.curr_code:
#             code = self.curr_code[self.currency]
#         else:
#             code = self.curr_code
#         return '货币种类: %s 编号 %s, 属于境内不能流通' %(self.currency,code)
# #异常堆栈          模块traceback
# import traceback

# try:
#     raise CurrencyError('美元')
# except CurrencyError as e:
#     traceback.print_exc()
#     print("异常 %s" %e)

# import sys
# def test(args):
#     print(args)
# test(sys.argv)

# import sys
# import os
# print(sys.modules.keys())
# print(sys.modules.values())
# print(sys.modules["os"])

# import sys
# sys.stdout.write("Hello\n")   #sys.stdout.write只能输出字符串
# name = sys.stdin.readline()      #sys.stdin.readline输入
# print(name)

#字符段处理
# '''去空格'''
# text = ' string blank space'
# print(text.strip())           #去掉首尾空格
# print(text.lstrip())         #只去除左边
# print(text.rstrip())        #只去除右边

# print('text'.replace('t','s'))   #替换字符

# print(text.split('|'))     #分割字符串

# list1 = ['a','b','c']           #字符串拼接
# print('-'.join(list1))

#时间和日期的处理
# import time
# print(time.time())             #时间戳
# print(time.localtime())            #获取9元组
# print(time.gmtime())          #获取UTC时间

# #时间类型转换
# time.sleep(1)       #设置时间延迟执行后面代码
# print(time.localtime(time.time()))     #转换为元组时间
# print(time.gmtime(time.time()))
# print(time.mktime(time.localtime()))    #返回时间戳
# print(time.mktime(time.gmtime()))

#时间格式化
# print(time.strftime("%Y/%m/%d %H:%M:%S"))            #输出当前本地时间
# t = time.strptime('2021/08/11 16:23:36', '%Y/%m/%d %H:%M:%S')                            #解析十几件字符串，返回time对象
# print(type(t))


# from datetime import datetime
# import time
# now = datetime.now()     #获取本地时间
# # print(now)

# t = time.time()
# curr_time2 = datetime.fromtimestamp(t)    #时间戳转时间对象
# print(curr_time2)

# time_str = '2021-08-09 18:00:00'
# curr_time = datetime.strptime(time_str,'%Y-%m-%d %H:%M:%S')
# print(curr_time)
# print(type(time_str))
# print(type(curr_time))


# print(now.strftime('%Y/%m/%d %H:%M:%S'))        #类型转字符串

#时间计算
# from datetime import timedelta
# from datetime import datetime
# now = datetime.now()
# days = timedelta(days=10)
# after_ten_days = now + days
# print(after_ten_days.strftime('%Y-%m-%d %H:%M:%S'))


#argparse参数处理模块
# import argparse
# parser = argparse.ArgumentParser()
# parser.add_argument('integer',type=int,help='display an integer',nargs='?')
# parser.add_argument('-a','--add',help="add something")
# args = parser.parse_args()
# print(args.integer)

# import argparse
# par = argparse.ArgumentParser()
# par.add_argument("inters",type=str,help='plase 输入一个数')
# ar = par.parse_args()
# print(ar.inters)

#正则表达式
#字符串查找
import re
# patterns = ['this','that']
# text = 'Does this text match the pattern?'
# for patten in patterns:
#     print('Looking for "%s" in "%s ->' %(patten,text))

#     if re.search(patten,text):
#         print("find a match")
#         match = re.search(patten,text)
#         s = match.start()
#         e = match.end()
#         print('Found "%s" in "%s" from %d ("%s")' % \
#               (match.re.pattern,match.string,s,e,text[s:e]))
#     else:
#         print("Not find")
    


#多次匹配
# text = 'abbbaaabbbbbaaaa'
# pattern = 'ab'
# for match in re.findall(pattern,text):
#     print('Found "%s"' % match)


# for match in re.finditer(pattern,text):
#     s = match.start()
#     e = match.end()
#     print('Found "%s" at %d %d' % (text[s:e],s,e))

#语法匹配

# text = 'This is some text -- with punctuation.'
# pattern = '[^ -.]+'
# for match in re.finditer(pattern,text):
#     print(text[match.start():match.end()])

#转义字符
#\d 匹配任意数字，等价于[0-9], \D匹配任意非数字 \s 匹配任意空白字符，等价于[\t\n\r\f] \S匹配任意非空字符 \w匹配字符数字及下划线 \W匹配非字母数字及下划线

# text = 'This is some text -- with punctuation.'
# pattern = r'[^\W]+'     #取反
# for match in re.finditer(pattern,text):
#     print(text[match.start():match.end()])


#锚定字符
#^匹配开头   $匹配字符串末尾   \b 匹配单词边界，也就是指单词和空格间的位置 \B匹配单词非边界
#. 匹配任意字符，除了换行符   |  匹配两边的值

#分组
# line = "cat are smarter than dogs"
# matchObj = re.match(r'(.*) are (.*?) .*',line,re.M|re.I)   #re.M 多行匹配  re.I 不区分大小写
# if matchObj:
#     print('matchObj.group()',matchObj.group())
#     print("matchObj.group(1)",matchObj.group(1))
#     print('matchObj.group(2)',matchObj.group(2))
# else:
#     print("No match!")

# line2 = "All new souls are given -- unqique and individual personalities."
# match1 = re.match(r'(.*) new (.*?) (.*) (.*) unqique (.*)',line2,re.M|re.I)
# if match1:
#     print('match1.group()',match1.group())
#     print('match1.group(1)',match1.group(1))
#     print('match1.group(2)',match1.group(2))
#     print('match1.group(3)',match1.group(3))
#     print('match1.group(4))',match1.group(4))
# else:
#     print("Not Match")

# text = "This is some text -- with punctuation."
# for pattern in[
#     r'^(?P<first_word>\w+)',
#     r'(?P<last_word>\w+)\S*$',
#     r'(?P<t_word>\bt\w+)\W+(?P<other_word>\w+)',
#     r'(?P<ends_with_t>\w+t)\b',
# ]:
#     print()
#     regex = re.compile(pattern)
#     match = regex.search(text)
#     print('Matching "%s"' % pattern)
#     print(match.groups())
#     print(match.groupdict())

# pattern = 'hello'
# text = 'hello world'
# print(re.match(pattern,text))
# print(re.search(pattern,text))


#待修改
# import re
# name1 = ""
# # while name1 == "":
# #     name1 = input("请输入用户名:")



# password1 = ""
# # while password1 == "":
# #     password1 = input("请输入密码:")

# passwd = ""
# # while passwd == "":
# #     passwd = input("请在此输入密码:")

# def pass2(name1,password,password1):
#     while name1 == "":
#         name1 = input("请输入用户名:")
#     while password == "":
#         password = input("请输入密码:")
#     while password1 == "":
#         password1 = input("请在此输入密码:")
#         return name1,password,password1

# name1,password1,passwd= pass2(name1,password=password1,password1=passwd)

# print(name1,password1,passwd)

# class users:
#     try:
#         def __init__(self,name):
#             self.name = name
#         def passwd(self,password,pass1):
#             if password != pass1:
#                 print("密码输入不一致")
#             else:
#                 print("用户创建成功")
#             match = re.search(r'(.*)',name1,re.M|re.I)
#             print("你所输入的用户名:",match.group(1))
#             match1 = re.search(r'(.*)',pass1,re.M|re.I)
#             print("你所输入的密码:",match1.group(1))         
#     except:
#         print("出错了")

# user = users(name=name1)
# user.passwd(password=password1,pass1=passwd)


#待修改
# import re
# ip = input("请输入一个IP地址x.x.x.x:")
# pattern =  r"\b(?:\d{1,3}\.){3}\d{1,3}\b"
# match2 = re.match(pattern,ip)
# if match2:
#     print("IP地址为:",match2.group())
# else:
#     print("Not Fount")

