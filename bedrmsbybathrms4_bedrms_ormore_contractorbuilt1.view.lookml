- view: bedrmsbybathrms4_bedrms_ormore_contractorbuilt1
  sql_table_name: house_construction.bedrmsbybathrms4_bedrms_ormore_contractorbuilt1
  fields:

  - dimension: oneandhalf_baths_orless
    type: string
    sql: ${TABLE}.Oneandhalf_baths_orless

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - dimension: three_baths_ormore
    type: string
    sql: ${TABLE}.Three_baths_ormore

  - dimension: total
    type: string
    sql: ${TABLE}.Total

  - dimension: two_and_half_baths2
    type: string
    sql: ${TABLE}.Two_and_half_baths2

  - dimension: two_baths
    type: string
    sql: ${TABLE}.Two_baths

  - dimension: year
    type: string
    sql: ${TABLE}.Year

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []

