- view: age_resticted_completed
  extends: characteristics
  sql_table_name: house_construction.age_resticted_completed
  fields:

  - dimension: age_restricted_dev
    type: string
    sql: ${TABLE}.Age_RestrictedDev

  - dimension: not_age_restricted_dev
    type: string
    sql: ${TABLE}.Not_Age_RestrictedDev

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - dimension: total
    type: string
    sql: ${TABLE}.Total

  - dimension: year
    type: string
    sql: ${TABLE}.Year

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []