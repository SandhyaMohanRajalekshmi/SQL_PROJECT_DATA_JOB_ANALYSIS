
/* list the company name that hasn't mentioned about the degree qualification*/
select name AS Name_Of_Company FROM company_dim 
where company_id in (
select company_id from job_postings_fact
where job_no_degree_mention = TRUE);