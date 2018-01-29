INSERT INTO developers (name, age, gender) VALUES ('Ihor',25,'Male'),
    ('Ira',26,'Female'),
    ('Lev',31,'Male'),
    ('Vadik',27,'Male'),
    ('Alexandra',23,'Female');

INSERT INTO skills (branch, level) VALUES ('Java','Junior'),
    ('Java','Middle'),
    ('Java','Senoir'),
    ('Skala','Junior'),
    ('Skala','Middle'),
    ('Swift','Middle'),
    ('PHP','Middle'),
    ('PHP','Senoir');

INSERT INTO companies (name, info) VALUES ('Wargaming','Games production'),
    ('Global Logic','Apps production'),
    ('EPAM','Software production'),
    ('Luxsoft','IT services export');

INSERT INTO projects (name, decription) VALUES ('Angular','web production'),
    ('Bootstrap','css/html framework'),
    ('Firebase', 'analytic instrument'),
    ('TankiGame','game for ios');

INSERT INTO customers (name, info) VALUES ('Aval','bank'),
    ('Kievstar','mobile connection'),
    ('MTC','3G connection');

INSERT INTO developer_projects (dev_id, projects_id) VALUES (1,1),(3,3),(2,2),(4,1),(5,4),(4,4),(3,2);

INSERT INTO developer_skills (dev_id, skills_id) VALUES (1,3),(2,2),(3,4),(4,7),(5,8),(2,6),(1,8);

INSERT INTO companies_projects (companies_id, projects_id) VALUES (1,1),(2,1),(3,2),(4,3),(2,3),(1,4);

INSERT INTO customers_projects (customers_id, projects_id) VALUES (2,1),(3,3),(1,1),(2,2),(3,1);







