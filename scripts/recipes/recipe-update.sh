#!/bin/bash

curl "http://localhost:4741/recipes/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "recipe": {
      "name": "'"${NAME}"'",
      "description": "'"${DESCRIPTION}"'",
      "extract": "'"${EXTRACT}"'",
      "grains": "'"${GRAINS}"'",
      "hops": "'"${HOPS}"'",
      "yeast": "'"${YEAST}"'",
      "directions": "'"${DIRECTIONS}"'"
    }
  }'

echo
