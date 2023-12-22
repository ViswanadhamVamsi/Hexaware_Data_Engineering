var1 = 100
if var1:
   print("1 - Got a true expression value")
   print (var1)
else:
   print ("1 - Got a false expression value")
   print (var1)


var2 = 0
if var2:
   print ("2 - Got a true expression value")
   print (var2)
else:
   print ("2 - Got a false expression value")
   print (var2)


print ("Good bye!")

var = 100
if var == 200:
   print ("1 - Got a true expression value")
   print (var)
elif var == 150:
   print ("2 - Got a true expression value")
   print (var)
elif var == 100:
   print ("3 - Got a true expression value")
   print (var)
else:
   print ("4 - Got a false expression value")
   print (var)


print ("Good bye!")

num = 10
 
if num > 5:
   print("Bigger than 5")
 
   if num <= 15:
      print("Between 5 and 15")

count = 0
while (count < 3): 
    count = count + 1
    print("Hello World") 

n = 4
for i in range(0, n): 
    print(i) 

for i in range(1, 5): 
    for j in range(i): 
        print(i, end=' ') 
    print() 