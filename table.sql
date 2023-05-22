CREATE TABLE Judge
(
  ID INT NOT NULL,
  Fname VARCHAR(20) NOT NULL,
  Lname VARCHAR(20) NOT NULL,
  birthday DATE NOT NULL,
  nationality VARCHAR(3) NOT NULL,
  experience INT NOT NULL,
  matches INT NOT NULL,
  gender VARCHAR(10) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE Coach
(
  ID INT NOT NULL,
  Fname VARCHAR(20) NOT NULL,
  Lname VARCHAR(20) NOT NULL,
  birthday DATE NOT NULL,
  nationality VARCHAR(3) NOT NULL,
  experience INT NOT NULL,
  matches INT NOT NULL,
  wins INT NOT NULL,
  losses INT NOT NULL,
  awards INT NOT NULL,
  gender VARCHAR(10) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE Player
(
  Fname VARCHAR(20) NOT NULL,
  birthday DATE NOT NULL,
  ID INT NOT NULL,
  weight INT NOT NULL,
  height INT NOT NULL,
  position VARCHAR(2) NOT NULL,
  nationality VARCHAR(3) NOT NULL,
  Lname VARCHAR(20) NOT NULL,
  number INT NOT NULL,
  matches INT NOT NULL,
  wins INT NOT NULL,
  losses INT NOT NULL,
  awards INT NOT NULL,
  gender VARCHAR(10) NOT NULL,
  experience INT NOT NULL,
  ID INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID) REFERENCES Coach(ID)
);