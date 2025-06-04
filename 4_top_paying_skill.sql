/* what are top skills based on salary for data analsyt?
1. analyze the average salary associated with each skill for data analyst position
2. focus on salary not the location
3. helps identify the most financially rewarding skills to improveand reveals the skills that impact salary

*/



SELECT
     skills as demand_skills,
     Round(avg(salary_year_avg),2) as avg_salary
from job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
where job_title_short ='Data Analyst' and salary_year_avg is NOT NULL
group by skills
order by avg_salary DESC
limit 25

 /*Insight are:

1. Skills like SVN ($400K), Solidity ($179K), and Couchbase ($160K) command significantly higher average salaries.

These are less commonly used or domain-specific tools (e.g., Solidity for blockchain,
 SVN for legacy version control), 
indicating lower supply but critical demand in niche areas.

2. Skills such as MXNet ($149K), Keras ($127K), PyTorch ($125K), Hugging Face ($123K), and TensorFlow ($120K) rank high.

This suggests a strong market need for data analysts who can build or work 
with machine learning models, especially in deep learning frameworks.

3. Tools like Terraform ($146K), VMware ($147.5K), Kafka ($130K), Airflow ($116K), and
 Ansible ($124K) reflect a blending of analyst and engineering roles.

Employers value analysts who understand deployment, orchestration, and infrastructure management—not just analysis.
*/
