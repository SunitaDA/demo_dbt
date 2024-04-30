{% snapshot scd_raw_hosts %}  

{{    
  config(      
    target_schema='DEV',      
    strategy='check',      
    unique_key='id',      
    check_cols=['IS_SUPERHOST']    
  )  
}}  

select * 
from {{ source('airbnb', 'hosts') }}

{% endsnapshot %}