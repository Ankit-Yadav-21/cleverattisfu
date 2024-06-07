# pip3 install requests
import requests
import json

API_KEY_SECRET = "cleverattisfu_default_secret"
cleveratti_URL = "https://sfu.cleveratti.com/api/v1/meeting"
# cleveratti_URL = "http://localhost:3010/api/v1/meeting"

headers = {
    "authorization": API_KEY_SECRET,
    "Content-Type": "application/json",
}

response = requests.post(
    cleveratti_URL,
    headers=headers
)

print("Status code:", response.status_code)
data = json.loads(response.text)
print("meeting:", data["meeting"])
