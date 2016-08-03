- view: const_method_ownerbuilt
  sql_table_name: house_construction.const_method_ownerbuilt
  fields:

  - dimension: modular
    type: string
    sql: ${TABLE}.Modular

  - dimension: other2
    type: string
    sql: ${TABLE}.Other2

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - dimension: site_built
    type: string
    sql: ${TABLE}.Site_built

  - dimension: total
    type: string
    sql: ${TABLE}.Total

  - dimension: year
    type: string
    sql: ${TABLE}.Year

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []