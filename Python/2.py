# key = {'key1': 123}
# print(key['key1'])

# li = {'a','b','c'}
# b=dict.fromkeys(li,50)
# print(b)

# dict1 = dict(str1 = 30,str2 = 40)
# print(dict1)

# print(dict1.get('str0', 'This is None'))

# dict1['aaa'] = 123
# print(dict1)name1 = input("请输入用户名:")
# dict1['aaa'] = 321
# print(dict1)

# del dict1['aaa']


# dict1.items()
# dict1.keys()

# st = set(range(10))
# print(st)
# st1 = set([1,3,3,4,5])
# print(st1)

# st1.add(213)
# st1.add((00,3234))
# st1.remove((00,3234))
# print(st1)

st1 = set([1,2,3])
st2 = set([3,4,5])
print(st1 & st2)
print(st1 | st2)
# print(st1 - st2)
# print(st1 ^ st2)
# st3 = st1.difference(st2)
# st3 = st1.intersection(st2)
# a = st1.pop()
# print(a)

# #pass 空语句， assert 判断语句，假报错，真语句执行
# age = 20
# if age < 30:
#     print('年轻')
# else:
#     print('old')

# p = range(10)
# for i in p:
#     print(i)

# n = 99
# sum = 0
# while n > 0:
#     sum = sum + n
#     n = n - 2
# print(sum)

# source = input()
# def source1(source2):
#     if int(source2) not in range(0,101):
#         print("非法")
#         print(False)
#     else:
#         print(True)
# source1(source)

# def printinfo(*a,**b):
#     print(a)
#     print(b)
# printinfo("zhangsan",name="lisi",*[1233123])  #一个*将序列拆分，**将字典拆分

# def pr(first,last='last',*arg,**agrs):
#     print(first)
#     print(last)
#     print(arg)
#     print(agrs)
# pr(**{"first":1,"last":2,"a":10})

#return 通过函数执行得到一个返回的结果，将函数中的结果返回实现外部调用
# def sum(agr,agr2):
#     total = agr + agr2
#     test3 = agr * agr2
#     return total, test3
# total,test3 = sum = (10,20)
# print(test3,total)

# from functools import partial
# def mod(n,m):
#     return n % m
# mod_by_100 = partial(mod,100)
# mod_7 = partial(mod,m=7)

# print(mod(100,7))
# print(mod_by_100(7))
# print(mod_7(100))

# z = 0
# def fun():
#     global z    #将变量z声明为全局变量,使函数中的 变量全局下可以使用
#     z = 100
#     print("内部",z)
# fun()
# print(z)

# X = 1
# def out1(i):
#     X = 219
#     Y = 'a'
#     print(X)
#     print(i)
#     def in1(n):
#         print(n)
#         print(X,Y)
#     in1(2)
# out1(3)


# print(globals())   #查看全是可用变量
# print(vars())  #查看全是可用变量

# def add(x,y):
#     return x+y
# print(add(3,4))

# add = lambda x,y: x+y
# print(add(3,4))

