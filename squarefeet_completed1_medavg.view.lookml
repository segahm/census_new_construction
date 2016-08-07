- view: square_feet_completed_medavg
  sql_table_name: house_construction.squarefeet_completed1_medavg
  fields:

  - measure: average_square_feet
    type: sum
    sql: FLOAT(${TABLE}.Average_Square_feet)

  - measure: median_square_feet
    type: sum
    sql: FLOAT(${TABLE}.Median_square_feet)

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

