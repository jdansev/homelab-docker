CREATE DATABASE mydatabase;

\c mydatabase;

CREATE TABLE IF NOT EXISTS users (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO users (first_name, last_name, email) VALUES
  ('John', 'Smith', 'john.smith@example.com'),
  ('Jane', 'Doe', 'jane.doe@example.com'),
  ('Michael', 'Johnson', 'michael.johnson@example.com'),
  ('Emily', 'Davis', 'emily.davis@example.com'),
  ('Chris', 'Brown', 'chris.brown@example.com'),
  ('Sarah', 'Wilson', 'sarah.wilson@example.com'),
  ('David', 'Miller', 'david.miller@example.com'),
  ('Jessica', 'Taylor', 'jessica.taylor@example.com'),
  ('Daniel', 'Anderson', 'daniel.anderson@example.com'),
  ('Laura', 'Thomas', 'laura.thomas@example.com'),
  ('James', 'White', 'james.white@example.com'),
  ('Olivia', 'Harris', 'olivia.harris@example.com'),
  ('William', 'Martin', 'william.martin@example.com'),
  ('Sophia', 'Lee', 'sophia.lee@example.com'),
  ('Benjamin', 'Hall', 'benjamin.hall@example.com');
