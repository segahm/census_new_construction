- view: ac_contractor_build
  extends: characteristics
  sql_table_name: house_construction.ac_contractor_build1
  fields:

  - measure: with_air_conditioning
    type: sum
    sql: FLOAT(${TABLE}.With_air_conditioning)

  - measure: without_air_conditioning
    type: sum
    sql: FLOAT(${TABLE}.Without_air_conditioning)

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []
