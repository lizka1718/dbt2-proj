select *
from {{ ref('staging_data_model') }}
where email is null