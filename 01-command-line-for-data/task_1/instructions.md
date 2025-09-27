# Exercise 00. First shell script

## Exercise Information

- **Turn-in directory:** `ex00/`
- **Files to turn in:** `hh.sh`, `hh.json`
- **Allowed functions:** `curl`, `jq`

## Task Description

For this exercise, you will interact with the HeadHunter API to parse information about vacancies. To do so, you must understand how both `curl` and the [HeadHunter API](https://github.com/hhru/api) work.

Write a shell script that:

1. Gets the name of a vacancy, "data scientist", as an argument (some later exercises will be based on this)
2. Downloads information about the first 20 vacancies that correspond to the search parameters
3. Stores it in a file named `hh.json`

## Expected Output Format

The result in the file must be formatted so that each field is on a different line. See the example below:

```json
{
  "page": 0,
  "found": 344,
  "clusters": null,
  "arguments": null,
  "per_page": 20,
  "pages": 18,
  "items": [
    {
      "apply_alternate_url": "https://hh.ru/applicant/vacancy_response?vacancyId=35895583",
      "address": {
        "id": "118660",
        "lat": 55.762556,
        "metro": {
          "station_id": "7.67",
          "line_name": "Таганско-Краснопресненская",
          "lng": 37.624423,
          "line_id": "7",
          "station_name": "Кузнецкий мост",
          "lat": 55.761498
        },
        "street": "Кузнецкий мост",
        "lng": 37.627175,
        "metro_stations": [
          {
            "line_name": "Таганско-Краснопресненская",
            "station_id": "7.67",
            "lng": 37.624423,
            "line_id": "7",
            "lat": 55.761498,
            "station_name": "Кузнецкий мост"
          }
        ],
        "building": "21/5",
        "city": "Москва",
        "description": null,
        "raw": "Москва, Кузнецкий мост, 21/5"
      }
    }
  ]
}
```

## Requirements

- Your script must be executable
- The interpreter to use is `/bin/sh`
- Place your script and the parsing results in the `ex00` folder in the `src` directory of your repository

## Skills Developed

This exercise will help you learn:
- Basic shell scripting
- Working with APIs using `curl`
- JSON processing with `jq`
- Command line argument handling
- File output and formatting

## Getting Started

1. Create the `ex00` directory in your `src` folder
2. Create the `hh.sh` script with proper shebang (`#!/bin/sh`)
3. Make it executable with `chmod +x hh.sh`
4. Test with: `./hh.sh "data scientist"`
5. Verify that `hh.json` is created with proper formatting

## Hints

- Use `curl` to make HTTP requests to the HeadHunter API
- Use `jq` to format and process JSON data
- Remember to handle command line arguments properly
- The API endpoint format is: `https://api.hh.ru/vacancies?text=SEARCH_TERM&per_page=20`
- You may need to URL-encode the search term