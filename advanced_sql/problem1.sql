/* find yearly average and hourly for each job*/

select 
        job_schedule_type,
        avg(salary_year_avg) AS Yearly_avg,
        avg(salary_hour_avg) AS Hourly_avg
from job_postings_fact where job_posted_date >= '2023-01-01'
GROUP BY job_schedule_type