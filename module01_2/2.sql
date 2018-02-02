SELECT developer_projects.projects_id AS projects_id, SUM(developers.salary) AS salariesSUM
FROM developer_projects
    INNER JOIN developers ON developers.id = developer_projects.dev_id
GROUP BY projects_id
ORDER BY salariesSUM DESC
LIMIT 1;