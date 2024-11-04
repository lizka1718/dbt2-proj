{{ config(
    materialized='table'
) }}

select * from {{ source('parquet_data', 'users') }}