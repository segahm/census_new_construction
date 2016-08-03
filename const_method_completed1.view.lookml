- view: const_method_completed
  sql_table_name: house_construction.const_method_completed
  fields:

  - measure: modular
    type: sum
    sql: FLOAT(${TABLE}.Modular)

  - measure: other2
    type: sum
    sql: FLOAT(${TABLE}.Other2)

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - measure: site_built
    type: sum
    sql: FLOAT(${TABLE}.Site_built)

  - measure: total
    type: sum
    sql: FLOAT(${TABLE}.Total)

  - dimension: year
    type: string
    sql: ${TABLE}.Year

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []
