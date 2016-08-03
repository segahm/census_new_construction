- view: exteriorwallmaterial_primary_owner_built
  sql_table_name: house_construction.exteriorwallmaterial_primary_owner_built
  fields:

  - dimension: brick
    type: string
    sql: ${TABLE}.Brick

  - dimension: fiber_cement
    type: string
    sql: ${TABLE}.Fiber_cement

  - dimension: other2
    type: string
    sql: ${TABLE}.Other2

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - dimension: stucco
    type: string
    sql: ${TABLE}.Stucco

  - dimension: total
    type: string
    sql: ${TABLE}.Total

  - dimension: vinyl_siding
    type: string
    sql: ${TABLE}.Vinyl_siding

  - dimension: wood
    type: string
    sql: ${TABLE}.Wood

  - dimension: year
    type: string
    sql: ${TABLE}.Year

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []