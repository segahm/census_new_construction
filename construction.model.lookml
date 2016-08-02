- connection: construction

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

# NOTE: please see https://www.looker.com/docs/r/dialects/bigquery
# NOTE: for BigQuery specific considerations

- explore: ages_regions
  label: 'Construction Characteristics'
  joins: 
  - join: finance_built_forsale
    relationship: one_to_one
    sql_on: |
      ${ages_regions.year} = ${finance_built_forsale.year}
      AND
      ${ages_regions.region} = ${finance_built_forsale.region}
    
  - join: finance_contractorbuilt1
    relationship: one_to_one
    sql_on: |
      ${ages_regions.year} = ${finance_contractorbuilt1.year}
      AND
      ${ages_regions.region} = ${finance_contractorbuilt1.region}
  
  - join: finance_owner_built
    relationship: one_to_one
    sql_on: |
      ${ages_regions.year} = ${finance_owner_built.year}
      AND
      ${ages_regions.region} = ${finance_owner_built.region}
      
  - join: financial_completed
    relationship: one_to_one
    sql_on: |
      ${ages_regions.year} = ${financial_completed.year}
      AND
      ${ages_regions.region} = ${financial_completed.region}
      
  - join: age_resticted_completed
    relationship: one_to_one
    sql_on: |
      ${ages_regions.year} = ${age_resticted_completed.year}
      AND
      ${ages_regions.region} = ${age_resticted_completed.region}
      
  - join: bathroom_completed1
    relationship: one_to_one
    sql_on: |
      ${ages_regions.year} = ${bathroom_completed1.year}
      AND
      ${ages_regions.region} = ${bathroom_completed1.region}
      
  - join: bathroom_contractorbuilt
    relationship: one_to_one
    sql_on: |
      ${ages_regions.year} = ${bathroom_contractorbuilt.year}
      AND
      ${ages_regions.region} = ${bathroom_contractorbuilt.region}
      
  - join: age_rest_builtforsale
    relationship: one_to_one
    sql_on: |
      ${ages_regions.year} = ${age_rest_builtforsale.year}
      AND
      ${ages_regions.region} = ${age_rest_builtforsale.region}  

