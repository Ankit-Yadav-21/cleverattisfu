#!/bin/bash

API_KEY_SECRET="cleverattisfu_default_secret"
cleveratti_URL="https://sfu.cleveratti.com/api/v1/token"
#cleveratti_URL="http://localhost:3010/api/v1/token"

curl $cleveratti_URL \
    --header "authorization: $API_KEY_SECRET" \
    --header "Content-Type: application/json" \
    --data '{"username":"username","password":"password","presenter":"true", "expire":"1h"}' \
    --request POST