- view: finance_built_forsale
  extends: characteristics
  sql_table_name: house_construction.finance_built_forsale
  fields:

  - dimension: cash
    type: string
    sql: ${TABLE}.Cash

  - dimension: conventional2
    type: string
    sql: ${TABLE}.Conventional2

  - dimension: fha_insured
    type: string
    sql: ${TABLE}.FHA_insured

  - dimension: for_rent
    type: string
    sql: ${TABLE}.For_Rent

  - dimension: for_sale_not_yet_sold
    type: string
    sql: ${TABLE}.For_Sale_NotYetSold

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - dimension: total
    type: string
    sql: ${TABLE}.Total

  - dimension: va_guaranteed
    type: string
    sql: ${TABLE}.VA_guaranteed

  - dimension: year
    type: string
    sql: ${TABLE}.Year

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []

