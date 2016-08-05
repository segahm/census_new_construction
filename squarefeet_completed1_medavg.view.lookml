- view: square_feet_completed_medavg
  sql_table_name: house_construction.squarefeet_completed1_medavg
  fields:

  - dimension: average_square_feet
    type: string
    sql: ${TABLE}.Average_Square_feet

  - dimension: median_square_feet
    type: string
    sql: ${TABLE}.Median_square_feet

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - dimension: year
    type: string
    sql: ${TABLE}.Year

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []

