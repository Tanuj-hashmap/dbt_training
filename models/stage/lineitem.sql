{{ config(
    schema= 'stage'
  ) }}

select * from {{ source('RAW', 'LINEITEM') }}