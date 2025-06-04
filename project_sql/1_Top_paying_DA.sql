/* what are the top paying data analyst jobs? 
-finding top 10 paying data analyst jobs for remote location only
--remove job with null or empty values
--add company dame that posted the job
*/
SELECT
    job_id,
    job_title,
    job_location,
    company_dim.name AS company_name,
    salary_year_avg 

FROM job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
where job_title_short ='Data Analyst'
and salary_year_avg is NOT NULL 
and job_location = 'Anywhere'
order by salary_year_avg DESC 
limit 10

