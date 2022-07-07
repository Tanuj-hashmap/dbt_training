{{config(
    schema='publish'
)}}

select
    O_CUSTKEY
    ,O_ORDERKEY
    ,O_ORDERSTATUS
    ,O_TOTALPRICE
    ,O_ORDERDATE
    ,L_LINENUMBER
    ,L_EXTENDEDPRICE
    ,L_QUANTITY
    ,L_DISCOUNT
    ,L_TAX
    ,L_RETURNFLAG
    ,L_LINESTATUS
    ,L_SHIPDATE
from
    {{source("STAGE","ORDERS")}} o
    left join {{source("STAGE","LINEITEM")}} L
    on O_ORDERKEY=L_ORDERKEY
order by O_ORDERKEY,L_LINENUMBER