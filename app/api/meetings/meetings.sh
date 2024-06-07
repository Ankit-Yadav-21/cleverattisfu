#!/bin/bash

API_KEY_SECRET="cleverattisfu_default_secret"
cleveratti_URL="https://sfu.cleveratti.com/api/v1/meetings"
#cleveratti_URL="http://localhost:3010/api/v1/meetings"

curl $cleveratti_URL \
    --header "authorization: $API_KEY_SECRET" \
    --header "Content-Type: application/json" \
    --request GET
