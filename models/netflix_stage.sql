{{
  config(
    schema='AIRBNB',
    materialized='table'
  )
}}

with netflix_stage as (
select * from {{ source('s3','netflix_titles' )}}
)
select * from netflix_stage
where type = 'Movie'

