/* An example of combining two tables of same columns*/
select 
        job_title_short,
        job_location,
        job_posted_date
 FROM jan_posted_jobs

 UNION

 select 
        job_title_short,
        job_location,
        job_posted_date
 FROM feb_posted_jobs