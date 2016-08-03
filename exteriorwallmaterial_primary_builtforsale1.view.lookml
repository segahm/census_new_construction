- view: exteriorwallmaterial_primary_builtforsale
  sql_table_name: house_construction.exteriorwallmaterial_primary_builtforsale
  fields:

  - measure: brick
    type: sum
    sql: FLOAT(${TABLE}.Brick)

  - measure: fiber_cement
    type: sum
    sql: FLOAT(${TABLE}.Fiber_cement)

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
