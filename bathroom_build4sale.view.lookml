- view: bathroom_build4sale
  extends: characteristics
  sql_table_name: house_construction.bathroom_build4sale
  fields:

  - measure: oneand_half_baths_orless
    type: sum
    sql: FLOAT(${TABLE}.Oneand_half_baths_orless)

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - measure: three_baths_ormore
    type: sum
    sql: FLOAT(${TABLE}.Three_baths_ormore)

  - measure: total
    type: sum
    sql: FLOAT(${TABLE}.Total)

  - measure: two_baths
    type: sum
    sql: FLOAT(${TABLE}.Two_baths)

  - measure: twoand_half_baths2
    type: sum
    sql: FLOAT(${TABLE}.Twoand_half_baths2)

  - dimension: year
    type: string
    sql: ${TABLE}.Year

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []
