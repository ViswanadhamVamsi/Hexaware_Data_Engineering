file = open('sample.txt', 'w')
file.write("This is a write command\n")
file.write('It allows us to write the data into the file')

file.close()

with open("sample.txt", 'r') as file:
    data = file.readlines()
    for line in data:
        word = line.split()
        print(word)