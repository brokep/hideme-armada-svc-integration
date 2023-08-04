export SERVER_URL=127.0.0.1:8080
curl --location "$SERVER_URL/api/v1/organization/user" \
--header 'Content-Type: application/json' \
--data '{
    "username": "jp"
}'

curl --location "$SERVER_URL/api/v1/organization/user" \
--header 'Content-Type: application/json' \
--data '{
    "username": "as"
}'

curl --location "$SERVER_URL/api/v1/organization/user" \
--header 'Content-Type: application/json' \
--data '{
    "username": "nm"
}'

curl --location "$SERVER_URL/api/v1/organization" \
--header 'Content-Type: application/json' \
--data '{
    "id": "a813b5e0-c48c-4eac-94fd-4d1295e5964a",
    "name": "Armada-Customer",
    "users": [

        {
            "id": 3,
            "username": "nm"
        }
    ]
}'

curl --location "$SERVER_URL/api/v1/organization" \
--header 'Content-Type: application/json' \
--data '{
    "id": "3799119b-75bc-4799-ab67-47b5aa06389e",
    "name": "Armada",
    "users": [
        {
            "id": 2,
            "username": "as"
        },
        {
            "id": 1,
            "username": "jp"
        }
    ]
}'
