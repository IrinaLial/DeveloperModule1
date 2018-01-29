SELECT avg(salary) AS average_salary
FROM developers, developer_projects
WHERE developers.id = developer_projects.dev_id AND
      projects_id = (
          SELECT id
          FROM projects
          WHERE cost = (
              SELECT min(cost)
              FROM projects
          ));