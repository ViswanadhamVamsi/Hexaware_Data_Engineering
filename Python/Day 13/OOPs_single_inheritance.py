class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age
class Professor(Person):
    def isProfessor(self):
        return f"{self.name} is a Profressor"

sir = Professor("John", 30)
print(sir.isProfessor())

# class Father:
#     def quality(self):
#         print('inside the Father Class')
#         print('Father has intelligence & deep thinking power')
#         print('\n')
# class Son(Father):
#     def aim(self):
#         print('inside the son class')
#         print('child wants to be a software engineer')
#         print('\n')

# abc = Son()
# abc.quality()
# abc.aim()
