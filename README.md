# dbt-medallion
### dbt-snowflake project with medallion architecture

A dbt-snowflake project implements Medallion architecture.It creates a dbt/snowflake data pipeline with three layers: bronze -> silver -> gold
 - Bronze: Raw ingestion from snowflake database dbt_db 
 - Silver: Cleaned and conformed staging models
 - Gold: Dimensional star Schema (DimCustomer, DimProduct, DimSupplier, DimDate, FactSales)

Run:
  dbt deps
  dbt seed
  dbt run
  dbt test
  dbt docs generate
