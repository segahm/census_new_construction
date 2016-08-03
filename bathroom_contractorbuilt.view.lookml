- view: bathroom_contractorbuilt
  extends: characteristics
  sql_table_name: house_construction.bathroom_contractorbuilt
  fields:

  - measure: fiveby2_baths2
    type: sum
    sql: FLOAT(${TABLE}.fiveby2_baths2)

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - measure: three_baths_ormore
    type: sum
    sql: FLOAT(${TABLE}.three_baths_ormore)

  - measure: threebytwobaths_or_less
    type: sum
    sql: FLOAT(${TABLE}.threebytwobaths_or_less)

  - measure: total
    type: sum
    sql: FLOAT(${TABLE}.Total)

  - measure: two_baths
    type: sum
    sql: FLOAT(${TABLE}.two_baths)

  - dimension: year
    type: string
    sql: ${TABLE}.Year

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []
