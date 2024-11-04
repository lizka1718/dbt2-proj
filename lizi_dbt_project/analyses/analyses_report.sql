select
    user_id,
    avg(total_spent) as average_spent
from {{ ref('data_mart_model') }}
group by user_id