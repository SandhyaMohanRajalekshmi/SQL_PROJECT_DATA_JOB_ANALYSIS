/* Using ::DATE, Extract, AT TIME ZONE features*/

select 
   job_title_short AS title,
    job_location AS location,
    job_posted_date  AS date,
    job_posted_date::DATE AS year_month_date,
    job_posted_date AT TIME ZONE 'UTC' AS date_UTC,
    extract (month from job_posted_date) AS month_posted
 from job_postings_fact limit 5;