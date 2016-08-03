- view: financial_completed
  extends: characteristics
  sql_table_name: house_construction.financial_completed
  fields:

  - measure: cash
    type: sum
    sql: FLOAT(${TABLE}.Cash)

  - measure: conventional
    type: sum
    sql: FLOAT(${TABLE}.Conventional)

  - measure: fha_insured
    type: sum
    sql: FLOAT(${TABLE}.FHA_insured)

  - measure: for_rent
    type: sum
    sql: FLOAT(${TABLE}.For_Rent)

  - measure: for_sale
    type: sum
    sql: FLOAT(${TABLE}.For_Sale)

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - measure: total
    type: sum
    sql: FLOAT(${TABLE}.Total)

  - measure: va_guaranteed
    type: sum
    sql: FLOAT(${TABLE}.VA_guaranteed)

  - dimension: year
    type: string
    sql: ${TABLE}.Year

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []
