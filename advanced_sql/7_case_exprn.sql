
/* An example of Case expression used to filter out using categories. creating a category based on location for each role*/
select job_title_short,
        job_location,
        CASE 
            WHEN job_location ='Anywhere' THEN  'Remote'
            WHEN job_location ='New York, NY' THEN 'Local'
            ELSE  'onsite'
        END AS location_category
From job_postings_fact
