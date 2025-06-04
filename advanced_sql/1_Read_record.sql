
select job_title_short,job_location, salary_year_avg
 FROM job_postings_fact
 where salary_year_avg >= 85000
 order by salary_year_avg desc