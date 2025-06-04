select jb.job_title_short,
  companies.name AS company_name,
  jb.job_location
from  job_postings_fact jb
LEFT JOIN company_dim AS companies
ON jb.company_id= companies.company_id