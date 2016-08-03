- view: ages_regions
  derived_table:
    sql: |
      SELECT
        Year AS year
        , Region AS region
        , TO_BASE64(SHA1(CONCAT(Year,Region))) as pk
        , FLOAT(Total) AS number_of_units
      FROM
        house_construction.financial_completed AS financial_completed
        , house_construction.finance_owner_built
        , house_construction.finance_contractorbuilt1
        , house_construction.finance_built_forsale
        , house_construction.bathroom_contractorbuilt
        , house_construction.bathroom_completed1
        , house_construction.bathroom_build4sale
        , house_construction.age_resticted_completed
        , house_construction.age_rest_builtforsale
      GROUP EACH BY 1 ,2,3, 4
      ORDER BY 1 ASC
    sql_trigger_value: SELECT CURRENT_DATE()
#
  fields:
    - dimension: year
#       hidden: true
      sql: ${TABLE}.Year

    - dimension: region
#       hidden: true
      sql: ${TABLE}.Region
      
    - measure: total_units
      type: sum
      sql: ${TABLE}.number_of_units 

    - dimension: pk
      hidden: true
      primary_key: true
