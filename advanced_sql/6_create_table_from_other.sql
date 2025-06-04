/* create table from other table*/
CREATE Table Jan_posted_jobs AS 
SELECT * 
from job_postings_fact
where extract(month from job_posted_date) = 01;

CREATE Table Feb_posted_jobs AS 
SELECT * 
from job_postings_fact
where extract(month from job_posted_date) = 02;

CREATE Table Mar_posted_jobs AS 
SELECT * 
from job_postings_fact
where extract(month from job_posted_date) = 03;
