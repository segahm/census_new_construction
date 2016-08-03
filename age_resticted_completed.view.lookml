- view: age_resticted_completed
  extends: characteristics
  sql_table_name: house_construction.age_resticted_completed
  fields:

  - measure: age_restricted_dev
    type: sum
    sql: FLOAT(${TABLE}.Age_RestrictedDev)

  - measure: not_age_restricted_dev
    type: sum
    sql: FLOAT(${TABLE}.Not_Age_RestrictedDev)

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - measure: total
    type: sum
    sql: FLOAT(${TABLE}.Total)

  - dimension: year
    type: string
    sql: ${TABLE}.Year

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []
