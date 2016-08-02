- view: bathroom_completed1
  extends: characteristics
  sql_table_name: house_construction.bathroom_completed1
  fields:

  - dimension: oneandhalf_baths_less
    type: string
    sql: ${TABLE}.oneandhalf_baths_less

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - dimension: three_baths_ormore
    type: string
    sql: ${TABLE}.three_baths_ormore

  - dimension: total
    type: string
    sql: ${TABLE}.Total

  - dimension: two_baths
    type: string
    sql: ${TABLE}.two_baths

  - dimension: twoandhalf_baths2
    type: string
    sql: ${TABLE}.twoandhalf_baths2

  - dimension: year
    type: string
    sql: ${TABLE}.Year

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []

