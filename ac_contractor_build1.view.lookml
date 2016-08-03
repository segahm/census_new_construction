- view: ac_contractor_build
  extends: characteristics
  sql_table_name: house_construction.ac_contractor_build1
  fields:

  - dimension: with_air_conditioning
    type: string
    sql: ${TABLE}.With_air_conditioning

  - dimension: without_air_conditioning
    type: string
    sql: ${TABLE}.Without_air_conditioning

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []