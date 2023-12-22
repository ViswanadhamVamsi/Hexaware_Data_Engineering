class Parent:
    str1 = "Python"

class Child(Parent):
    str2 = "Geeks"

class GrandChild(Child):

    def get_str(self):
        print(self.str1 + self.str2)

person = GrandChild()
person.get_str()

# class GrandF:
#     def gf_quality(self):
#         print('inside GrandF class')
#         print('GrandF was a honest peron')
#         print('\n')
# class Father(GrandF):
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
# abc.gf_quality()
# abc.quality()
# abc.aim()