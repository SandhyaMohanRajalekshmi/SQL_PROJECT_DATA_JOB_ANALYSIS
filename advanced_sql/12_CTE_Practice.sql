/* list top 10 skils required dtaa analyst and also shows how many jobs are requested for the same.*/

with remote_job_skills AS (

select 
        skill_id,
        count(*) AS skill_count
from
        skills_job_dim AS skills_to_job
INNER JOIN
        job_postings_fact AS job_postings
    ON job_postings.job_id = skills_to_job.job_id
WHERE
        job_postings.job_work_from_home = TRUE AND
        job_title_short = 'Data Analyst'
group BY
        skill_id
)
select skill.skill_id,
        skill.skills AS skill_name,
        skill_count
from remote_job_skills
INNER JOIN skills_dim AS skill
on skill.skill_id = remote_job_skills.skill_id
order by skill_count DESC
limit 10

