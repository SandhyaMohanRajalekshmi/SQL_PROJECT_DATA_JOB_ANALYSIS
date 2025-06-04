/* An example of CTE*/
WITH jan_jobs AS
(
    SELECT * 
    FROM job_postings_fact 
    WHERE EXTRACT(month FROM job_posted_date) = 1
)
SELECT *
FROM jan_jobs;