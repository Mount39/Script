import random
MEAT = ("Pork",'Chicken','Beef','Fish','lamb')

def random_meat():
    return MEAT[random.randint(0,len(MEAT)-1)]
