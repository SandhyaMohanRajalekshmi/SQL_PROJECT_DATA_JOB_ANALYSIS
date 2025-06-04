/*what are the most optimal skill to learn ?
high demand and high paying
only remote jobs
null salary values are ignored

*/
SELECT 
        skills_dim.skill_id,
        skills_dim.skills,
        count(skills_job_dim.job_id) AS demand_count,
         Round(avg(salary_year_avg),0) AS avg_salary


from job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_title_short = 'Data Analyst'
       AND salary_year_avg IS NOT NULL
       And job_work_from_home = TRUE
GROUP BY skills_dim.skill_id
having count(skills_job_dim.job_id) > 10
ORDER BY avg_salary DESC, 
demand_count DESC
LIMIT 10;
