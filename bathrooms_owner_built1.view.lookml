- view: bathrooms_owner_built
  sql_table_name: house_construction.bathrooms_owner_built1
  fields:

  - measure: oneandhalf_baths_orless
    type: sum
    sql: FLOAT(${TABLE}.Oneandhalf_baths_orless)

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - measure: three_baths_ormore
    type: sum
    sql: FLOAT(${TABLE}.Three_baths_ormore)

  - measure: total
    type: sum
    sql: FLOAT(${TABLE}.Total)

  - measure: two_and_half_baths2
    type: sum
    sql: FLOAT(${TABLE}.Two_and_half_baths2)

  - measure: two_baths
    type: sum
    sql: FLOAT(${TABLE}.Two_baths)

  - dimension: year
    type: string
    sql: ${TABLE}.Year

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []
