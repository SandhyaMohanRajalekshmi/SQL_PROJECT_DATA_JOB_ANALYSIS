/*List top 5 skills and its count using Join */

SELECT 
    sd.skill_id,
    sd.skills,
    skill_counts.skill_count
FROM skills_dim sd
INNER JOIN (
    SELECT 
        skill_id,
        COUNT(*) AS skill_count
    FROM skills_job_dim
    GROUP BY skill_id
    ORDER BY skill_count DESC
    LIMIT 5
) AS skill_counts
ON sd.skill_id = skill_counts.skill_id
ORDER BY skill_counts.skill_count DESC;
