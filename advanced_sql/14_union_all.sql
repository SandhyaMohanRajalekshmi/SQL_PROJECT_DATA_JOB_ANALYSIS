/* find the job title and location of data analyst, those who earns more than 70000 for first quartar. make sure job posted date should be displayed-only dates*/
select  job_title_short,
        job_location,
        job_posted_date::DATE,
        salary_year_avg


FROM(
    select * from jan_posted_jobs
    UNION ALL
    select * from feb_posted_jobs
    UNION ALL
    select * from mar_posted_jobs
    ) AS FIrst_Quartar

where salary_year_avg > 70000 AND job_title_short ='Data Analyst' 
ORDER BY salary_year_avg desc
