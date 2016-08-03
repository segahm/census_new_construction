- view: ac_build_4sale
  extends: characteristics
  sql_table_name: house_construction.ac_build_4sale1
  fields:

  - dimension: total
    type: string
    sql: ${TABLE}.Total

#   - dimension: with_air_conditioning
#     type: number
#     sql: ${TABLE}.With_air_conditioning

  - dimension: without_air_conditioning
    type: string
    sql: ${TABLE}.Without_air_conditioning
    
  - measure: with_air_conditioning
    type: sum
    sql: FLOAT(${TABLE}.With_air_conditioning)

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []