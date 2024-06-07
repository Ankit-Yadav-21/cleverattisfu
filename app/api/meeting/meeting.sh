#!/bin/bash

API_KEY_SECRET="cleverattisfu_default_secret"
cleveratti_URL="https://sfu.cleveratti.com/api/v1/meeting"
# cleveratti_URL="http://localhost:3010/api/v1/meeting"

curl $cleveratti_URL \
    --header "authorization: $API_KEY_SECRET" \
    --header "Content-Type: application/json" \
    --request POST