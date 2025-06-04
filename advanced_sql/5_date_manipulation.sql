
/* find out the no. of jobs are posted on each month*/

select COUNT(job_id) AS total_job_posted,
extract (month from job_posted_date)  AS month_posted

From job_postings_fact
where job_title_short = 'Data Analyst'
group by month_posted
order by total_job_posted DESC
