import random
FOOD = ('Apple','Banana','Orange','Grape','Watermelon')        #随机水果

def random_food():
    return FOOD[random.randint(0,len(FOOD)-1)]

# a = random_food()
# print(a)