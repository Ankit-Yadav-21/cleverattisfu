#!/bin/bash

API_KEY_SECRET="cleverattisfu_default_secret"
cleveratti_URL="https://sfu.cleveratti.com/api/v1/join"
# cleveratti_URL="http://localhost:3010/api/v1/join"

curl $cleveratti_URL \
    --header "authorization: $API_KEY_SECRET" \
    --header "Content-Type: application/json" \
    --data '{"room":"test","roomPassword":"false","name":"cleverattisfu","audio":"true","video":"true","screen":"false","hide":"false","notify":"true","token":{"username":"username","password":"password","presenter":"true", "expire":"1h"}}' \
    --request POST