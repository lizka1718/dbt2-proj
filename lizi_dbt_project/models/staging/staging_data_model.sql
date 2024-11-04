{{ config(
    materialized='table'
) }}

select
    id,
    name,
    email,
    created_at
from {{ ref('raw_data_model') }}