# Docker Embulk MySQL to BigQuery

## example of Embulk config file

sample.yml.liquid

```yml
in:
  type: mysql
  host: {{ Host }}
  user: {{ User }}
  password: {{ Password }}
  database: {{ Database }}
  fetch_rows: 1000
  connect_timeout: 0
  socket_timeout: 0
  table: {{ Table }}
  select: "*"

out:
  type: bigquery
  mode: append
  auth_method: json_key
  json_keyfile: {{ Json Keyfile Path }}
  project: {{ Project }}
  dataset: {{ Dataset }}
  table: {{ Table }}
  compression: GZIP
  auto_create_dataset: true
  auto_create_table: true
```

## useage

```
embulk run -b embulk/plugins /path/to/file.yml.liquid
```
