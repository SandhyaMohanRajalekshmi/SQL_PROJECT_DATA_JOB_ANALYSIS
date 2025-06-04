
/* list the no of job posted for each month only for 2023 and timezone was America/New_york*/
SELECT 
    COUNT(job_id) AS job_posted_count,
    EXTRACT(MONTH FROM job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'America/New_York') AS job_posted_month
FROM job_postings_fact
WHERE EXTRACT(YEAR FROM job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'America/New_York') = 2023
GROUP BY job_posted_month
ORDER BY job_posted_month;