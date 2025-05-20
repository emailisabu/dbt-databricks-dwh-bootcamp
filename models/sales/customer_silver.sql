select
    C_CUSTKEY,
    C_NAME,
    C_NATIONKEY,
    C_ACCTBAL,
    C_PHONE
from {{ source('tpch', 'customer_bronze') }}
where C_CUSTKEY is not null
and C_NATIONKEY != 21
