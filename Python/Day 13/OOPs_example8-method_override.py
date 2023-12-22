class Bird:
    def __init__(self, name):
        self.name = name
    def print_info(self):
        print('This bird is :', self.name)
    def fly(self):
        print('The Bird can fly')
    
class Parrot(Bird):
    def __init__(self, name, color, character):
        super().__init__(name)
        self.color = color
        self.character = character
    def print_info(self):
        super().print_info()
        print('Color of the bird is: ', self.color)
        print('The Character of the bird is: ', self.character)
        
    def fly(self):
        print('The Bird can fly')
obj_Parrot = Parrot('parrot', 'red', 'good')
obj_Parrot.fly()
obj_Parrot.print_info()