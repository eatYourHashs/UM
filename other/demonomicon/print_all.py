# Import proper data
import json, math, re, os
with open('entries.json') as file:
  data = json.load(file)
entries = data['entries']

i = 0
for entry in entries :
    # Get data from JSON file
    id = entry['id']
    i = i + 1
    print(id)

print("Number of entries: ", i)