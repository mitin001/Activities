# Convert a two-column TSV document into a JSON object

## Activity

Map input.tsv to output.json.

## Usage

```sh
cat input.tsv | sh function.sh > output.json
```

## How input.tsv was generated

MySQL server 5.7.16.

```sql
select * from mysql.time_zone_name where `Name` like 'US/%';
```
