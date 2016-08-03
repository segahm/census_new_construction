- view: finance_contractorbuilt
  extends: characteristics
  sql_table_name: house_construction.finance_contractorbuilt1
  fields:

  - measure: cash
    type: sum
    sql: FLOAT(${TABLE}.Cash)

  - measure: conventional2
    type: sum
    sql: FLOAT(${TABLE}.Conventional2)

  - measure: fha_insured
    type: sum
    sql: FLOAT(${TABLE}.FHA_insured)

  - measure: for_rent
    type: sum
    sql: FLOAT(${TABLE}.For_Rent)

  - measure: for_sale_not_yet_sold
    type: sum
    sql: FLOAT(${TABLE}.For_SaleNot_YetSold)

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
