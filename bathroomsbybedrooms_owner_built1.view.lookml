- view: bathroomsbybedrooms_owner_built
  sql_table_name: house_construction.bathroomsbybedrooms_owner_built1
  fields:

  - measure: four_bedrooms_or_more
    type: sum
    sql: FLOAT(${TABLE}.four_bedrooms_or_more)

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - measure: three_bedrooms
    type: sum
    sql: FLOAT(${TABLE}.three_bedrooms)

  - measure: total
    type: sum
    sql: FLOAT(${TABLE}.Total)

  - measure: two_bedrooms_or_less
    type: sum
    sql: FLOAT(${TABLE}.two_bedrooms_or_less)

  - dimension: year
    type: string
    sql: ${TABLE}.Year

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []
