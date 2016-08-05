- view: square_feet_completed
  extends: characteristics
  sql_table_name: house_construction.square_feet_completed1
  fields:

  - dimension: eighteen_hundred_to_twenty3hundred
    type: string
    sql: ${TABLE}.Eighteen_hundred_to_twenty3hundred

  - dimension: fourteen_hundrdto_senteen_ninty9
    type: string
    sql: ${TABLE}.fourteen_hundrdto_senteen_ninty9

  - dimension: fourty_thousand_or_more
    type: string
    sql: ${TABLE}.fourty_thousand_or_more

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - dimension: three_thousnd_to_thrty9hundred_ninty9
    type: string
    sql: ${TABLE}.Three_thousnd_to_thrty9hundred_ninty9

  - measure: total
    type: sum
    sql: FLOAT(${TABLE}.Total)

  - dimension: twenty4hundred_to_twenty9hundred_99
    type: string
    sql: ${TABLE}.Twenty4hundred_to_twenty9hundred_99

  - dimension: under_1400
    type: string
    sql: ${TABLE}.Under_1400

  - dimension: year
    type: string
    sql: ${TABLE}.Year

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []

