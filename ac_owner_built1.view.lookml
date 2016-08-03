- view: ac_owner_built
  sql_table_name: house_construction.ac_owner_built1
  fields:

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - measure: total
    type: sum
    sql: FLOAT(${TABLE}.Total)

  - measure: with_air_conditioning
    type: sum
    sql: FLOAT(${TABLE}.With_air_conditioning)

  - measure: without_air_conditioning
    type: sum
    sql: FLOAT(${TABLE}.Without_air_conditioning)

  - dimension: year
    type: string
    sql: ${TABLE}.Year

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []
