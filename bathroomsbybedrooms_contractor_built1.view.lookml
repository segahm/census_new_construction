- view: bathroomsbybedrooms_contractor_built
  sql_table_name: house_construction.bathroomsbybedrooms_Contractor_built1
  fields:

  - dimension: four_bedrooms_or_more
    type: string
    sql: ${TABLE}.four_bedrooms_or_more

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - dimension: three_bedrooms
    type: string
    sql: ${TABLE}.three_bedrooms

  - dimension: total
    type: string
    sql: ${TABLE}.Total

  - dimension: two_bedrooms_or_less
    type: string
    sql: ${TABLE}.two_bedrooms_or_less

  - dimension: year
    type: string
    sql: ${TABLE}.Year

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []