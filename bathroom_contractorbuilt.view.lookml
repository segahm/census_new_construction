- view: bathroom_contractorbuilt
  extends: characteristics
  sql_table_name: house_construction.bathroom_contractorbuilt
  fields:

  - dimension: fiveby2_baths2
    type: string
    sql: ${TABLE}.fiveby2_baths2

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - dimension: three_baths_ormore
    type: string
    sql: ${TABLE}.three_baths_ormore

  - dimension: threebytwobaths_or_less
    type: string
    sql: ${TABLE}.threebytwobaths_or_less

  - dimension: total
    type: string
    sql: ${TABLE}.Total

  - dimension: two_baths
    type: string
    sql: ${TABLE}.two_baths

  - dimension: year
    type: string
    sql: ${TABLE}.Year

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []

