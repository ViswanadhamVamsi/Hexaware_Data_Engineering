# # a file named "geek", will be opened with the reading mode.
# file = open('sample.txt', 'r')
 
# # This will print every line one by one in the file
# for each in file:
#     print (each)
    
file = open("sample.txt", 'r')
print(file.read()) #no extra line will be printed for each line of the data in file

with open("sample.txt") as file:
    data = file.read()
print(data)  #no extra line here too.

file = open("sample.txt", 'r')
print(file.read(5))


        
        
