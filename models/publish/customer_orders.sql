{{ config(
    schema= 'publish'
  ) }}
  
select
    C_CUSTKEY
    ,C_NAME
    ,C_ADDRESS
    ,C_NATIONKEY
    ,C_PHONE
    ,C_ACCTBAL
    ,O_ORDERKEY
    ,O_ORDERSTATUS
    ,O_TOTALPRICE
    ,O_ORDERDATE
    ,O_ORDERPRIORITY
from
    {{ source('STAGE', 'CUSTOMER') }} c
    left join {{ source('STAGE', 'ORDERS') }} o
    on C_CUSTKEY=O_CUSTKEY
order by C_CUSTKEY