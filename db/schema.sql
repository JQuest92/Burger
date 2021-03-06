CREATE DATABASE IF NOT EXISTS burgers_db;
USE burgers_db;

# If the table already exists, remove it before trying to create the table again
DROP TABLE IF EXISTS burgers_db;

# Create the burgers table
CREATE TABLE burgers (
id int NOT NULL AUTO_INCREMENT,
burger_name varchar(255) NULL,
devoured BOOL DEFAULT false,
PRIMARY KEY (id)
);

#below is for debugging
select * from burgers;

delete from burgers where devoured = 1;