with netflix_stage as
(
select * from {{ source("s3","netflix_titles" }}
where type = "Movie"
)
