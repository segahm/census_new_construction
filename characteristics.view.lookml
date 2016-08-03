- view: characteristics
  extension: required
  fields:
    - dimension: year
      hidden: true
      sql: ${TABLE}.Year
      
    - dimension: region
      hidden: true
      sql: ${TABLE}.Region
      
      
    - dimension: total
      type: string
      sql: ${TABLE}.Total
      
    - dimension: pk
      primary_key: true
      hidden: true
      sql: CONCAT(${year},${region})


