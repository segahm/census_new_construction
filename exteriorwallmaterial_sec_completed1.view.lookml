- view: exteriorwallmaterial_sec_completed
  sql_table_name: house_construction.exteriorwallmaterial_sec_completed
  fields:

  - measure: brick
    type: sum
    sql: FLOAT(${TABLE}.Brick)

  - measure: fiber_cement
    type: sum
    sql: FLOAT(${TABLE}.Fiber_cement)

  - measure: none
    type: sum
    sql: FLOAT(${TABLE}.None)

  - measure: other2
    type: sum
    sql: FLOAT(${TABLE}.Other2)

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - measure: stucco
    type: sum
    sql: FLOAT(${TABLE}.Stucco)

  - measure: total
    type: sum
    sql: FLOAT(${TABLE}.Total)

  - measure: vinyl_siding
    type: sum
    sql: FLOAT(${TABLE}.Vinyl_siding)

  - measure: wood
    type: sum
    sql: FLOAT(${TABLE}.Wood)

  - dimension: year
    type: string
    sql: ${TABLE}.Year

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []
