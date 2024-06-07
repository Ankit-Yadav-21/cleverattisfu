<?php

$API_KEY_SECRET = "cleverattisfu_default_secret";
$cleveratti_URL = "https://sfu.cleveratti.com/api/v1/meeting";
// $cleveratti_URL = "http://localhost:3010/api/v1/meeting";

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $cleveratti_URL);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_POST, 1);

$headers = [
    'authorization:' . $API_KEY_SECRET,
    'Content-Type: application/json'
];

curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
$response = curl_exec($ch);
$httpcode = curl_getinfo($ch, CURLINFO_HTTP_CODE);

curl_close($ch);

echo "Status code: $httpcode \n";
$data = json_decode($response);
echo "meeting: ", $data->{'meeting'}, "\n";
