DROP TABLE IF EXISTS USERS;
DROP TABLE IF EXISTS VEHICLES;

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


  CREATE TABLE VEHICLES (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  price VARCHAR(250) NOT NULL,
  status VARCHAR(250) NOT NULL,
  year VARCHAR(250) NOT NULL,
  maker VARCHAR(250) NOT NULL,
    color VARCHAR(250) NOT NULL,
  model VARCHAR(250) NOT NULL,
  image VARCHAR(250) DEFAULT NULL,
  millage VARCHAR(250) DEFAULT NULL
);

INSERT INTO VEHICLES (maker, model, year,color, millage, status,price)VALUES
  ('GMC', 'SILVERADO', '2018','Blue','108000','New','18000'),
  ('BUICK', 'COLORADO', '2018','Blue','108000','New','18000'),
  ('CADILLAC', 'MICHIGAN', '2018','Blue','108000','New','18000'),
  ('chevrolet', 'UTAH', '2018','Blue','108000','New','18000'),
  ('GMC', 'TEXAS', '2018','Blue','108000','New','18000');
