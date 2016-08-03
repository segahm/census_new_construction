- view: bathroom_completed
  extends: characteristics
  sql_table_name: house_construction.bathroom_completed1
  fields:

  - measure: oneandhalf_baths_less
    type: sum
    sql: FLOAT(${TABLE}.oneandhalf_baths_less)

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - measure: three_baths_ormore
    type: sum
    sql: FLOAT(${TABLE}.three_baths_ormore)

  - measure: total
    type: sum
    sql: FLOAT(${TABLE}.Total)

  - measure: two_baths
    type: sum
    sql: FLOAT(${TABLE}.two_baths)

  - measure: twoandhalf_baths2
    type: sum
    sql: FLOAT(${TABLE}.twoandhalf_baths2)

  - dimension: year
    type: string
    sql: ${TABLE}.Year

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []
