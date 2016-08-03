- view: fireplaces_built_for_sale
  sql_table_name: house_construction.fireplaces_built_for_sale1
  fields:

  - dimension: no_fireplace
    type: string
    sql: ${TABLE}.No_fireplace

  - dimension: one_fireplace
    type: string
    sql: ${TABLE}.One_fireplace

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - dimension: total
    type: string
    sql: ${TABLE}.Total

  - dimension: two_or_more_fireplaces
    type: string
    sql: ${TABLE}.two_or_more_fireplaces

  - dimension: year
    type: string
    sql: ${TABLE}.Year

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []