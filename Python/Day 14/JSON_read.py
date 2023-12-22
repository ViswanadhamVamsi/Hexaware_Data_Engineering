import json
 
# Opening JSON file
with open('sample.json') as json_file:
    data = json.load(json_file)
    print(data)