- view: property
  derived_table:
    sql: |
      SELECT 
        Year AS year
        , Region AS region
        , TO_BASE64(SHA1(CONCAT(Year,Region,type,number_of_units))) as pk
        , type
        , number_of_units
      FROM (
        SELECT
          Year
          , Region
          , Total AS number_of_units
          , 'Financial Completed' AS type
        from house_construction.financial_completed
      ),
      (
        SELECT
          Year
          , Region
          , Total AS number_of_units
          , 'Financial Owner Built' AS type
        from house_construction.finance_owner_built
      ),
      (
        SELECT
          Year
          , Region
          , Total AS number_of_units
          , 'Financial Contractor Built' AS type
        from house_construction.finance_contractorbuilt1
      ),
      (
        SELECT
          Year
          , Region
          , Total AS number_of_units
          , 'Financial Built for Sale' AS type
        from house_construction.finance_built_forsale
      ),  
      (
        SELECT
          Year
          , Region
          , Total AS number_of_units
          , 'Bathroom Contractor Built' AS type
        from house_construction.bathroom_contractorbuilt
      ),
      (
        SELECT
          Year
          , Region
          , Total AS number_of_units
          , 'Bathroom Completed' AS type
        from house_construction.bathroom_completed1
      ),
      (
        SELECT
          Year
          , Region
          , Total AS number_of_units
          , 'Bathroom Build for Sale' AS type
        from house_construction.bathroom_build4sale
      ),
      (
        SELECT
          Year
          , Region
          , Total AS number_of_units
          , 'Age Restricted Completed' AS type
        from house_construction.age_resticted_completed
      ),
      (
        SELECT
          Year
          , Region
          , Total AS number_of_units
          , 'Age Restricted Built for Sale' AS type
        from house_construction.age_rest_builtforsale
      )
      ,
      (
        SELECT
          Year
          , Region
          , Total AS number_of_units
          , 'Exterior Wall MAterial Sec Owner Built' AS type
        from house_construction.exteriorwallmaterial_sec_ownerbuilt1
      )
      ,
      (
        SELECT
          Year
          , Region
          , Total AS number_of_units
          , 'AC Built for Sale' AS type
        from house_construction.ac_build_4sale1
      )
      ,
      (
        SELECT
          Year
          , Region
          , Total AS number_of_units
          , 'AC Completed' AS type
        from house_construction.ac_completed1
      )
      ,
      (
        SELECT
          Year
          , Region
          , Total AS number_of_units
          , 'AC Contractor Build' AS type
        from house_construction.ac_contractor_build1
      )
      
      GROUP EACH BY 1,2,3,4,5
      ORDER BY  1 ASC
    sql_trigger_value: SELECT CURRENT_DATE()
#
  fields:
    - dimension: year
      hidden: true
      sql: ${TABLE}.year

    - dimension: region
      hidden: true
      sql: ${TABLE}.region
      
    - dimension: number_of_units
      hidden: true
      
    - dimension: type
      
    - measure: total
      type: sum
      sql: FLOAT(${number_of_units})
      
    - dimension: pk
      hidden: true
      primary_key: true