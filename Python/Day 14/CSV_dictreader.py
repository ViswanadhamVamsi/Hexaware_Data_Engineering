import csv
with open('example.csv', 'r') as file:
    reader = csv.DictReader(file)
    for row in reader:
        print(row)
        
