CREATE TABLE area
(
  areaID NUMERIC(3) NOT NULL,
  areaName VARCHAR(20) NOT NULL,
  PRIMARY KEY (areaID)
);

CREATE TABLE city
(
  cityName VARCHAR(20) NOT NULL,
  areaID NUMERIC(3) NOT NULL,
  PRIMARY KEY (cityName),
  FOREIGN KEY (areaID) REFERENCES area(areaID)
);

CREATE TABLE agent
(
  agentID NUMERIC(9) NOT NULL,
  agentName VARCHAR(20) NOT NULL,
  Rating NUMERIC(2) NOT NULL,
  HireYear NUMERIC(4) NOT NULL,
  bossID NUMERIC(9) NOT NULL,
  sallary FLOAT NOT NULL,
  areaID NUMERIC(3) NOT NULL,
  PRIMARY KEY (agentID),
  FOREIGN KEY (areaID) REFERENCES area(areaID)
);

CREATE TABLE client
(
  clientName VARCHAR(20) NOT NULL,
  phoneNr NUMERIC(10) NOT NULL,
  Address VARCHAR(25) NOT NULL,
  clientID NUMERIC(9) NOT NULL,
  cityName VARCHAR(20) NOT NULL,
  PRIMARY KEY (clientID),
  FOREIGN KEY (cityName) REFERENCES city(cityName)
);

CREATE TABLE schedule
(
  meetingTime DATE NOT NULL,
  agentID NUMERIC(9) NOT NULL,
  clientID NUMERIC(9) NOT NULL,
  PRIMARY KEY (meetingTime, agentID, clientID),
  FOREIGN KEY (agentID) REFERENCES agent(agentID),
  FOREIGN KEY (clientID) REFERENCES client(clientID),
  UNIQUE (agentID, clientID)
);
