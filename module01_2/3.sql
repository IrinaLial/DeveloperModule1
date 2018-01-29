SELECT skills.branch, sum(salary)
FROM developers, developer_skills, skills
WHERE
    developers.id = developer_skills.dev_id AND
    developer_skills.skills_id = skills.id AND
    skills.branch='Java';

