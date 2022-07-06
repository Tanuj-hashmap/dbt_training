{{ config(
    schema= 'stage',
    database='DBTTRAINING',
    abcd='wsdwsf'
  ) }}
-- select * from {{database}}."RAW"."ORDERS"
select '1' as numbr
-- select current_date() as d, {{abcd}} as dummy
-- select * from {{ source('RAW', 'ORDERS') }}