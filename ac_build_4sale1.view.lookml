- view: ac_build_4sale
  extends: characteristics
  sql_table_name: house_construction.ac_build_4sale1
  fields:

  - measure: total
    type: sum
    sql: FLOAT(${TABLE}.Total)

#   - measure: with_air_conditioning
#     type: number
#     sql: FLOAT(${TABLE}.With_air_conditioning)

  - measure: without_air_conditioning
    type: sum
    sql: FLOAT(${TABLE}.Without_air_conditioning)

  - measure: with_air_conditioning
    type: sum
    sql: FLOAT(${TABLE}.With_air_conditioning)

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []
