/* find out how many jobs are posted for remote, local and onsite jobs*/
select  count(job_id)
        job_location,
        CASE 
            WHEN job_location ='Anywhere' THEN  'Remote'
            WHEN job_location ='New York, NY' THEN 'Local'
            ELSE  'onsite'
        END AS location_category
From job_postings_fact
group by location_category