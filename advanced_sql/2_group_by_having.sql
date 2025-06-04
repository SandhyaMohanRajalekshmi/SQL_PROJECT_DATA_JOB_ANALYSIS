/* average of salary each job title */
select job_title_short, avg(salary_year_avg)
FROM job_postings_fact
GROUP BY job_title_short
having avg(salary_year_avg)>50000