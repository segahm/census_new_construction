- connection: construction

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

# NOTE: please see https://www.looker.com/docs/r/dialects/bigquery
# NOTE: for BigQuery specific considerations

- explore: ages_regions
  label: 'Construction Characteristics'
  joins: 
    
  - join: property
    relationship: one_to_many
    sql_on: |
      ${ages_regions.year} = ${property.year}
      AND
      ${ages_regions.region} = ${property.region}
  
  - join: ac_build_4sale
    relationship: one_to_one
    sql_on: |
      ${ages_regions.year} = ${ac_build_4sale.year}
      AND
      ${ages_regions.region} = ${ac_build_4sale.region}
    sql_where: |
      ${property.type} = 'AC Built for Sale'
      
  - join: ac_completed
    relationship: one_to_one
    sql_on: |
      ${ages_regions.year} = ${ac_completed.year}
      AND
      ${ages_regions.region} = ${ac_completed.region}
    sql_where: |
      ${property.type} = 'AC Completed'
      
  - join: ac_contractor_build
    relationship: one_to_one
    sql_on: |
      ${ages_regions.year} = ${ac_contractor_build.year}
      AND
      ${ages_regions.region} = ${ac_contractor_build.region}  
    sql_where: |
      ${property.type} = 'AC Contractor Build'      
  
  - join: finance_built_forsale
    relationship: one_to_one
    sql_on: |
      ${ages_regions.year} = ${finance_built_forsale.year}
      AND
      ${ages_regions.region} = ${finance_built_forsale.region}
    sql_where: |
      ${property.type} = 'Financial Built for Sale'
    
  - join: finance_contractorbuilt
    relationship: one_to_one
    sql_on: |
      ${ages_regions.year} = ${finance_contractorbuilt.year}
      AND
      ${ages_regions.region} = ${finance_contractorbuilt.region}
    sql_where: |
      ${property.type} = 'Financial Contractor Built'
  
  - join: finance_owner_built
    relationship: one_to_one
    sql_on: |
      ${ages_regions.year} = ${finance_owner_built.year}
      AND
      ${ages_regions.region} = ${finance_owner_built.region}
    sql_where: |
      ${property.type} = 'Financial Owner Built'
      
  - join: financial_completed
    relationship: one_to_one
    sql_on: |
      ${ages_regions.year} = ${financial_completed.year}
      AND
      ${ages_regions.region} = ${financial_completed.region}
    sql_where: |
      ${property.type} = 'Financial Completed'      
      
  - join: age_resticted_completed
    relationship: one_to_one
    sql_on: |
      ${ages_regions.year} = ${age_resticted_completed.year}
      AND
      ${ages_regions.region} = ${age_resticted_completed.region}
    sql_where: |
      ${property.type} = 'Age Restricted Completed'
      
  - join: bathroom_completed
    relationship: one_to_one
    sql_on: |
      ${ages_regions.year} = ${bathroom_completed.year}
      AND
      ${ages_regions.region} = ${bathroom_completed.region}
    sql_where: |
      ${property.type} = 'Bathroom Completed'
      
  - join: bathroom_contractorbuilt
    relationship: one_to_one
    sql_on: |
      ${ages_regions.year} = ${bathroom_contractorbuilt.year}
      AND
      ${ages_regions.region} = ${bathroom_contractorbuilt.region}
    sql_where: |
      ${property.type} = 'Bathroom Contractor Built'
      
  - join: age_rest_builtforsale
    relationship: one_to_one
    sql_on: |
      ${ages_regions.year} = ${age_rest_builtforsale.year}
      AND
      ${ages_regions.region} = ${age_rest_builtforsale.region}  
    sql_where: | 
      ${property.type} = 'Age Restricted Built for Sale'