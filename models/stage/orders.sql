{{ config(
    schema= 'stage',
    database='DBTTRAINING',
    abcd='wsdwsf'
  ) }}
-- select * from {{database}}."RAW"."ORDERS"

-- select {{abcd}}
select * from {{ source('RAW', 'ORDERS') }}