{{ config(
    schema= 'stage'
  ) }}

select * from {{ source('RAW', 'ORDERS') }}