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
      hidden: true
      sql: ${TABLE}.Total
      
    - dimension: number_of_units
      hidden: true
      sql: FLOAT(${total})
      
    - measure: total_units
      type: sum
      sql: ${number_of_units}
      
    - dimension: pk
      primary_key: true
      hidden: true
      sql: CONCAT(${year},${region})
      
    - measure: count
      hidden: true


