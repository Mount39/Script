# def sumfun(a):
#     def sum_a(b):
#         return a + b
#     return sum_a
# sum_2 = sumfun(2)

# def sum_a(a,b):
#     return a + b
# #不使用闭包
# print(sum_a(2,3))

# #使用闭包
# print(sum_2(3))

# list1 = [1,3,2,3,4]
# new_list = map(lambda x: x*2,list1)
# print(list(new_list))

# for i in new_list:
#     print(i)

# listDemo = [1,2,3,4]
# new_list = filter(lambda x: x % 2 == 0,listDemo)
# print(list(new_list))

# import functools
# product = functools.reduce(lambda x,y: x * y,[1,2,3,4,5])
# print(product)


# adc = functools.reduce(lambda x,y: x+y*(x+1),[1,2,3,4,5])
# print(adc)

# list2 = [1,2,3,4,5,6,7,8,9,0]
# new_list1 = filter(lambda x: x % 3 == 0,list2)
# print(list(new_list1))

# class st:
#     school = "wang"
#     def __init__(self,name,age,score):
#         self.name = name
#         self.age = age
#         self.score = score
#         print(self.score)
#         print(st.school)
#     def is_pass(self):
#         return self.score >= 60
    
# a = st("zhangsan",38,70).is_pass()
# print(a)

# class Dog:
#     def __init__(self,name,age,color):
#         self.name = name
#         self.age = age
#         self.color = color
#     def sleep(self,duration):
#         print(f"sleep {duration} min")
#     def eat(self,food):
#         print(f"eat is {food}")

# mydog = Dog("xiaohuang",3,"black")
# print(mydog.name)
# print(mydog.age)
# print(mydog.color)

# mydog.sleep(10)
# mydog.eat("gutou")

# class Map:                 #Map类名
#     MapType = 1    #类变量
#     def __init__(self,name,type):
#         self.name = name         #实例变量
#         self.type = type
#     def sleep(self,duration):
#         print(f"睡眠{duration}分钟")

# maps = Map("lisi","nan")
# print(maps.name)
# print(maps.type)

# maps.sleep(50)
# Map.MapType = 8    #修改类变量值
# Map.new_num = 2    #定义新的类变量
# maps.name = "zhangsan"     #修改实例变量的值

# class Robot:
#     '''表示有一个带有名字的机器人'''
#     #一个类变量，用来记录机器人的数量
#     population = 0
#     def __init__(self,name):
#         '''初始化数据'''
#         self.name = name
#         print(f"Initializaing {self.name}")

#         #当有机器人被创建时，将会增加人口的数量
#         # Robot.population = Robot.population + 1
#         Robot.population += 1
#     def destory(self):
#         '''我被摧毁了'''
#         print(f"{self.name} is being destroyed!")
#         Robot.population -= 1
#         if Robot.population == 0:
#             print(f"{self.name} was the last one")
#         else:
#             print("There are still {:d} robots working".format(Robot.population))

#     def say_hi(self):
#         '''来自机器人的诚挚问候
#         没问题，你做得到
#         '''
#         print(f"Greeting, my masters calll me {self.name}")
#     @classmethod    #类方法的的装饰器
#     def how_many(cls):
#         '''打印出当前的机器人人口数量'''
#         print("We have {:d} robots".format(cls.population))

#     @staticmethod       #静态方法
#     def robot_moive():
#         print("Do you know eva and Wall?")
    
# Robot1 = Robot("R2-D2")
# Robot1.say_hi()
# Robot1.how_many()

# Robot2 = Robot("C-3PO")
# Robot2.say_hi()
# Robot2.how_many()

# print("\nRobots cando saome work here\n")
# print("Rotots hare finised therir work So let's destory them")

# Robot1.destory()
# Robot2.destory()

# Robot.how_many()
# Robot.robot_moive()


# class Complution:
#     Complution_count = 0
#     def __init__(self,name):
#         self.name = name
#         print(f"电脑编号{self.name}")
#         Complution.Complution_count += 1
#     def remove(self):
#         print(f"删除电脑{self.name}")
#         Complution.Complution_count -=1
#         if Complution.Complution_count == 0:
#             print("没有机器了")
#         else:
#             print("还有剩余的机器")
#     @classmethod
#     def how_many(cls):
#         print("我们有 {:d} 电脑".format(cls.Complution_count))
    
#     @staticmethod
#     def com_moive():
#         print("你知道电脑编号吗")

# Complution1 = Complution("123413123312")
# Complution.how_many()

# Complution2 = Complution("4545352422652")
# Complution.how_many()

# Complution1.remove()
# Complution2.remove()
# Complution.how_many()
# Complution.com_moive()

# class People:
#     people1 = 0
#     def __init__(self,name,age):
#         self.name = name
#         self.age = age
#         print(self.name)
#         People.people1 += 1 
#     def type1(self,type2):
#         print(f"性别{type2}")
#     def like1(self,game):
#         print(f"我喜欢{game}")
#     def sleep(self,sl):
#         print(f"我可以睡{sl}分钟")

#     @classmethod
#     def how_people(cls):
#         print("我们有{:d}人".format(cls.people1))

#     @staticmethod
#     def hi_people():
#         print(f"欢迎")

# People1 = People("Mir wang",30)
# People1.type1("man")
# People1.like1("Play games")
# People1.sleep(20)
# People1.how_people()
# People1.hi_people()


# class Dog:
#     def __init__(self,name):
#         self.__name = name
#     @property
#     def name(self):
#         return self.__name

#     @name.setter             #使用这个可以修改name的值
#     def name(self,value):
#         self.__name = value

#     @name.deleter
#     def name(self):
#         print("删除方法")
#         self.__name = None

# dog = Dog('xiaoming')
# print(dog.name)
# dog.name = 'wangwu'  #property值无法更改，必须要使用setter去更改
# print(dog.name)        #使用property之后才可以修改name的值


# class SchoolMember():
#     '''代表任何学校里的成员'''
#     def __init__(self,name,age):
#         self.name = name
#         self.age = age
#         print(f"Initialized SchoolMember:{self.name}")
#     def tell(self):
#         '''告诉我有关的细节'''
#         print(f'name: {self.name} Age:{self.age}',end="")
#     def do_exec(self):
#         print("Go to playing")
# class Teacher(SchoolMember):
#     '''代表每一个老师'''
#     def __init__(self,name,age,salary,course):
#             SchoolMember.__init__(self,name,age)           #单独继承
#             self.salary = salary
#             self.course = course
#             print(f'(Initialized Teacher:{self.name})')
#     def tell(self):
#             SchoolMember.tell(self)
#             print('Salary:"{:d}",Course: "{:d}"'.format(self.salary,self.course))
    
# class Student(SchoolMember):
#     '''代表每一个学生'''
#     def __init__(self,name,age,marks,tuition):
#         SchoolMember.__init__(self,name,age)
#         self.marks = marks
#         self.tuition = tuition
#         print(f'(Initialized Student: {self.name})')
#     def tell(self):
#         SchoolMember.tell(self)
#         print('Marks: "{:d}", Tuition:"{:d}"'.format(self.marks,self.tuition))

# teacher = Teacher("Mir,zhangsan",40,30000,25)
# student = Student('Bob',20,275,1000)

# print()

# teacher.tell()
# student.tell()
    
# members  = [teacher,student]
# for member in members:
#     member.do_exec()
    
# teacher.do_exec()
# student.do_exec()


# class A:
#     def test(self):
#         print("A")
# class B(A):
#     pass
# class C(A):
#     def test(self):
#         print("C")
# class D(B,C):
#     pass
# print(D.__mro__)

# d = D().test()

# class Human:
#     def love(self):
#         print('Human can love someone')
# class Robot:
#     def super_power(self):
#         print('I can fly')
# class Cyborg(Human, Robot):
#     pass

# alita = Cyborg
# alita.love()
# alita.super_power()


# class ArmDog:
#     def bite_enemy(self):
#         print("追击敌人")

# class DrugDog:
#     def track_drug(self):
#         print("追查毒品")
# class Person:
#     def work_with_army(self, dog):
#         dog.bite_enemy()
#     def work_with_drug(self, dog):
#         dog.track_drug()

# p = Person()
# p.work_with_army(ArmDog())
# p.work_with_drug(DrugDog())

# class Dog:
#     def work(self):
#         pass
# class ArmyDog(Dog):
#     def work(self):
#         print("追击敌人")
# class DrugDog(Dog):
#     def work(self):
#         print("追查毒品")
# class Person(object):
#     def work_with_dog(self,dog):
#         dog.work()
# p = Person()
# p.work_with_dog(ArmDog())
# p.work_with_dog(DrugDog())

# class ArmDog:
#     def bite_enemy(self):
#         print("追击敌人")
# class DrugDog:
#     def track_drug(self):
#         print("追查毒品")
# class Dog1:
#     def Dog1_Dog(self):
#         print("搜救")
# class Dog2:
#     def Dog2_Dog(self):
#         print("鉴别")
# class Dog3:
#     def Dog3_Dog(self):
#         print("导盲")
# class Person:
#     def work_with_army(self, dog):
#         dog.bite_enemy()
#     def work_with_drug(self, dog):
#         dog.track_drug()
#     def Dog1_Dog(self, dog):
#         dog.Dog1_Dog()
#     def Dog2_Dog(self, dog):
#         dog.Dog2_Dog()
#     def Dog3_Dog(self, dog):
#         dog.Dog3_Dog()

# p = Person()
# p.work_with_army(ArmDog())
# p.work_with_drug(DrugDog())
# p.Dog1_Dog(Dog1())
# p.Dog2_Dog(Dog2())
# p.Dog3_Dog(Dog3())



# class Dog:
#     def work(self):
#         pass
# class ArmyDog(Dog):
#     def work(self):
#         print("追击敌人")
# class DrugDog(Dog):
#     def work(self):
#         print("追查毒品")
# class Dog1:
#     def work(self):
#         print("搜救")
# class Dog2:
#     def work(self):
#         print("导盲")
# class Dog3:
#     def work(self):
#         print("鉴别")       
# class Person(object):
#     def work_with_dog(self,dog):
#         dog.work()
# p = Person()
# p.work_with_dog(ArmyDog())
# p.work_with_dog(DrugDog())
# p.work_with_dog(Dog1())
# p.work_with_dog(Dog2())
# p.work_with_dog(Dog3())

# class Dog1:
#     def work(self):
#         pass
# class Dog2:
#     def work(self):
#         print("导盲")
# class Dog3:
#     def work(self):
#         print("搜救")
# class Dog4:
#     def work(self):
#         print("追击坏人")
# class Persion(object):
#     def work_with_dog(self,dog):
#         dog.work()

# a = Persion()
# a.work_with_dog(Dog2())
# a.work_with_dog(Dog3())
# a.work_with_dog(Dog4())