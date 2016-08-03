- view: fireplaces_built_for_sale
  sql_table_name: house_construction.fireplaces_built_for_sale1
  fields:

  - measure: no_fireplace
    type: sum
    sql: FLOAT(${TABLE}.No_fireplace)

  - measure: one_fireplace
    type: sum
    sql: FLOAT(${TABLE}.One_fireplace)

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - measure: total
    type: sum
    sql: FLOAT(${TABLE}.Total)

  - measure: two_or_more_fireplaces
    type: sum
    sql: FLOAT(${TABLE}.two_or_more_fireplaces)

  - dimension: year
    type: string
    sql: ${TABLE}.Year

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []
