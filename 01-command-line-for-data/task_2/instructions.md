# Chapter IV

## Exercise 01. Transforming JSON to CSV

### Exercise Information

- **Files to turn in:** `filter.jq`, `json_to_csv.sh`, `hh.csv`
- **Allowed functions:** `jq`

### Task Description

In the previous exercise, you received a JSON file. Although it is a popular format for APIs, it is inconvenient for actual data analysis. Therefore, you will need to convert it into a CSV file, which is more convenient.

Write a shell script called `json_to_csv.sh` that:

1. Executes `jq` with a filter written in a separate file `filter.jq`
2. Filters the following 5 columns corresponding to the vacancies: "id", "created_at", "name", "has_test", and "alternate_url"
3. Saves the result to the CSV file `hh.csv`

### Expected Output Format

See the example below:

```csv
"id","created_at","name","has_test","alternate_url"
"35895583","2020-04-12T12:06:33+0300","Специалист / data scientist (big data, прогностическая аналитика data mining)",false,"https://hh.ru/vacancy/35895583"
"36359628","2020-04-11T19:25:48+0300","Senior Data Scientist",false,"https://hh.ru/vacancy/36359628"
"35218725","2020-04-11T18:03:53+0300","Junior Data scientist",false,"https://hh.ru/vacancy/35218725"
```

### Requirements

- The CSV file must have headers in the first row
- Your script must be executable
- The interpreter to use is `/bin/sh`
- Place the filter file that converts JSON to CSV, as well as the result of the conversion, in the `ex01` folder in the `src` directory of your repository

### Skills Developed

This exercise will help you learn:
- Advanced `jq` filtering and data transformation
- JSON to CSV conversion techniques
- Creating reusable filter files
- Working with structured data formats
- Shell script automation for data processing
