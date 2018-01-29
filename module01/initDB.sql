CREATE TABLE developers
(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    firstName VARCHAR(50) NOT NULL,
    secondName VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(10)
);
CREATE TABLE skills
(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    branch VARCHAR(50) NOT NULL,
    level VARCHAR(50) NOT NULL
);

CREATE TABLE projects
(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    decription VARCHAR(50) NOT NULL
);
CREATE TABLE companies
(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    info VARCHAR(100) NOT NULL
);
CREATE TABLE customers
(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    info VARCHAR(50) NOT NULL
);
CREATE TABLE developer_skills
(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    dev_id INT NOT NULL,
    skills_id INT NOT NULL,
    CONSTRAINT developer_skills_developers_id_fk FOREIGN KEY (dev_id) REFERENCES developers (id),
    CONSTRAINT developer_skills_skills_id_fk FOREIGN KEY (skills_id) REFERENCES skills (id)
);
CREATE TABLE developer_projects
(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    dev_id INT NOT NULL,
    projects_id INT NOT NULL,
    CONSTRAINT developer_projects_developers_id_fk FOREIGN KEY (dev_id) REFERENCES developers (id),
    CONSTRAINT developer_projects_projects_id_fk FOREIGN KEY (projects_id) REFERENCES projects (id)
);

CREATE TABLE companies_projects
(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    companies_id INT NOT NULL,
    projects_id INT NOT NULL,
    CONSTRAINT companies_projects_companies_id_fk FOREIGN KEY (companies_id) REFERENCES companies (id),
    CONSTRAINT companies_projects_projects_id_fk FOREIGN KEY (projects_id) REFERENCES projects (id)
);
CREATE TABLE customers_projects
(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    customers_id INT NOT NULL,
    projects_id INT NOT NULL,
    CONSTRAINT customers_projects_customers_id_fk FOREIGN KEY (customers_id) REFERENCES customers (id),
    CONSTRAINT customers_projects_projects_id_fk FOREIGN KEY (projects_id) REFERENCES projects (id)
);
