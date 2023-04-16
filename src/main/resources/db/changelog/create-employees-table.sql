--liquibase formatted sql

--changeset me:1
CREATE TABLE employees (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  PRIMARY KEY (id)
);
--rollback DROP TABLE employees;

--changeset me:2
ALTER TABLE employees ADD COLUMN address VARCHAR(255);
--rollback ALTER TABLE employees DROP COLUMN address;


--changeset me:3
ALTER TABLE employees ADD COLUMN address1 VARCHAR(255);
--rollback ALTER TABLE employees DROP COLUMN address1;