class SuperClass1:
    num1 = 3
class SuperClass2:
    num2 = 5
class SubClass(SuperClass1, SuperClass2):
    def addition(self):
        return self.num1+self.num2
obj = SubClass()
print(obj.addition())