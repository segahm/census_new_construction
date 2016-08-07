- view: square_feet_completed
  extends: characteristics
  sql_table_name: house_construction.square_feet_completed1
  fields:

  - measure: eighteen_hundred_to_twenty3hundred
    type: sum
    sql: FLOAT(${TABLE}.Eighteen_hundred_to_twenty3hundred)

  - measure: fourteen_hundrdto_senteen_ninty9
    type: sum
    sql: FLOAT(${TABLE}.fourteen_hundrdto_senteen_ninty9)

  - measure: fourty_thousand_or_more
    type: sum
    sql: FLOAT(${TABLE}.fourty_thousand_or_more)

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - measure: three_thousnd_to_thrty9hundred_ninty9
    type: sum
    sql: FLOAT(${TABLE}.Three_thousnd_to_thrty9hundred_ninty9)

  - measure: total
    type: sum
    sql: FLOAT(${TABLE}.Total)

  - measure: twenty4hundred_to_twenty9hundred_99
    type: sum
    sql: FLOAT(${TABLE}.Twenty4hundred_to_twenty9hundred_99)

  - measure: under_1400
    type: sum
    sql: FLOAT(${TABLE}.Under_1400)

  - dimension: year
    type: string
    sql: ${TABLE}.Year

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []

