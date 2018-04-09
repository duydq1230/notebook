##########################
# GET                    #
##########################
import requests
url = "http://localhost:8080/messages"
response = requests.get(url)
data = response.json()

##########################
# POST                   #
##########################
import requests
import json

url = "http://localhost:8080/messages"
data = {'sender': 'Alice', 'receiver': 'Bob', 'message': 'Hello!'}
headers = {
  'Content-type': 'application/json',
  'Accept': 'application/json'}
r = requests.post(url, data=json.dumps(data), headers=headers)