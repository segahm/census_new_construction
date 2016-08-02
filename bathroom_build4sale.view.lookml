- view: bathroom_build4sale
  extends: characteristics
  sql_table_name: house_construction.bathroom_build4sale
  fields:

  - dimension: oneand_half_baths_orless
    type: string
    sql: ${TABLE}.Oneand_half_baths_orless

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - dimension: three_baths_ormore
    type: string
    sql: ${TABLE}.Three_baths_ormore

  - dimension: total
    type: string
    sql: ${TABLE}.Total

  - dimension: two_baths
    type: string
    sql: ${TABLE}.Two_baths

  - dimension: twoand_half_baths2
    type: string
    sql: ${TABLE}.Twoand_half_baths2

  - dimension: year
    type: string
    sql: ${TABLE}.Year

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []

