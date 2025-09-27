#!/bin/sh

if [ $# -eq 0 ]; then
    echo "Usage: $0 <vacancy_name>"
    exit 1
fi

VACANCY_NAME=$(printf '%s' "$1" | jq -s -R -r @uri)

API_URL="https://api.hh.ru/vacancies?text=$VACANCY_NAME&per_page=20"

curl -s -H "User-Agent: hh-parser" "$API_URL" | jq '.' > hh.json