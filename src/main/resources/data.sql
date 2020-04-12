DROP TABLE IF EXISTS USERS;

CREATE TABLE USERS (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  username VARCHAR(250) NOT NULL,
  password VARCHAR(250) NOT NULL,
  role VARCHAR(250) DEFAULT NULL
);

INSERT INTO USERS (username, password, role) VALUES
  ('jhazzat@gmail.com', 'password', 'admin'),
  ('jallalovski@yahoo.fr', 'password', 'user'),
    ('test1@gmail.com', 'password', 'admin'),
  ('test2@yahoo.fr', 'password', 'user'),
    ('test3@gmail.com', 'password', 'admin'),
  ('test4@yahoo.fr', 'password', 'user'),
    ('test5@gmail.com', 'password', 'admin'),
  ('test6@yahoo.fr', 'password', 'user'),
    ('test7@gmail.com', 'password', 'admin'),
  ('test8@yahoo.fr', 'password', 'user'),
    ('test9@yahoo.fr', 'password', 'user'),
  ('jhazzat@umich.edu', 'password', 'user');
