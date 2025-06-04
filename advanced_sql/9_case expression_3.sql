
/* Applying case expression for yearly salary average*/ 
select job_title_short,
       salary_year_avg,
       CASE
          WHEN salary_year_avg BETWEEN 50000 AND 60000 THEN 'Standard'
          WHEN salary_year_avg <50000 THEN 'low'
          WHEN salary_year_avg IS NULL THEN 'unknown'
          ELSE 'high'
        END AS salary_category
from job_postings_fact
where job_title_short = 'Data Analyst'
order by salary_year_avg desc