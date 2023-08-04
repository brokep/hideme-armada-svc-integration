export SERVER_URL=127.0.0.1:3030

curl --location "$SERVER_URL/api/asset/v1-alpha/asset/" \
--header 'Content-Type: application/json' \
--data '{ "name": "Starlink-JP", "assetId": "AST-1596623-76592-59", "category": "RackHardware", "status": "Available", "tags": ["network-adapter", "local-testing"] }'

curl --location "$SERVER_URL/api/asset/v1-alpha/asset/" \
--header 'Content-Type: application/json' \
--data '{ "name": "Starlink-Anish", "assetId": "AST-1596624-97408-59", "category": "RackHardware", "status": "Available", "tags": ["network-adapter", "local-testing"] }'

curl --location "$SERVER_URL/api/asset/v1-alpha/asset/" \
--header 'Content-Type: application/json' \
--data '{ "name": "Galleon-JP", "assetId": "GAL-9872234-83264-49", "category": "Galleon", "status": "Created", "tags": ["compute-instance", "local-testing"] }'

curl --location "$SERVER_URL/api/asset/v1-alpha/asset/" \
--header 'Content-Type: application/json' \
--data '{ "name": "Galleon-Anish", "assetId": "GAL-9872235-83264-49", "category": "Galleon", "status": "Created", "tags": ["compute-instance", "local-testing"] }'


curl --location --request PUT "$SERVER_URL/api/asset/v1-alpha/asset/AST-1596623-76592-59/register/organization/1"

curl --location --request PUT "$SERVER_URL/api/asset/v1-alpha/asset/AST-1596624-97408-59/register/organization/2"

curl --location --request PUT "$SERVER_URL/api/asset/v1-alpha/asset/GAL-9872234-83264-49/register/organization/1"

curl --location --request PUT "$SERVER_URL/api/asset/v1-alpha/asset/GAL-9872235-83264-49/register/organization/2"
