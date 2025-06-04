/* list the total no . of job post for each company*/

with job_count_company AS (
select 
        count(*) AS total_count,company_id
from job_postings_fact
group by company_id )
select company_dim.name, job_count_company.total_count
from company_dim
LEFT JOIN job_count_company
on job_count_company.company_id= company_dim.company_id
order by job_count_company.total_count desc