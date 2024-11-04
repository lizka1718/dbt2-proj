{{ config(
    materialized='table'
) }}

select
    user_id,
    count(*) as transaction_count,
    sum(amount) as total_spent
from {{ ref('staging_data_model') }}
group by user_id