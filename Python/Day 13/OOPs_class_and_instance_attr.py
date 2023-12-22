class Dog:
    atr1 = "mammal" #class attribute
    def __init__(self, name): #instance attribute
        self.name = name 

Rotweiler = Dog("Rotty")
Tommy = Dog("Tommy")

print("Rotweiler is a {}".format(Rotweiler.__class__.atr1))
print("Tommy is a {}".format(Tommy.__class__.atr1))
print("My Name is {}:".format(Rotweiler.name))
print("My name is {}".format(Tommy.name))