# pip3 install requests
import requests
import json

API_KEY_SECRET = "cleverattisfu_default_secret"
cleveratti_URL = "https://sfu.cleveratti.com/api/v1/token"
#cleveratti_URL = "http://localhost:3010/api/v1/token"

headers = {
    "authorization": API_KEY_SECRET,
    "Content-Type": "application/json",
}

data = {
    "username": "username",
    "password": "password",
    "presenter": "true",
    "expire": "1h"
}

response = requests.post(
    cleveratti_URL, 
    headers=headers, 
    json=data
)

print("Status code:", response.status_code)
data = json.loads(response.text)
print("token:", data["token"])
