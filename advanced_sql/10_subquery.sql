
--SUb query: query insise a query
--selecting jobs only posted on january
select * 
from(SELECT * from job_postings_fact WHERE EXTRACT (month from job_posted_date)='01')
AS jan_posted_jobs