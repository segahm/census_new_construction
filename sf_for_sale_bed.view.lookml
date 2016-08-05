- view: bedrooms_for_sale
  extends: characteristics
  sql_table_name: house_construction.sf_for_sale_bed
  fields:

  - measure: four_bedrooms_or_more
    type: sum
    sql: FLOAT(${TABLE}.Four_bedrooms_or_more)

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - measure: three_bedrooms
    type: sum
    sql: FLOAT(${TABLE}.Three_bedrooms)

  - measure: total
    type: sum
    hidden: true
    sql: FLOAT(${TABLE}.Total)
    
  - measure: two_bedrooms_or_less
    type: sum
    sql: FLOAT(${TABLE}.Two_bedrooms_or_less)

  - dimension: year
    type: string
    sql: ${TABLE}.Year

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []

