CREATE TABLE advertisement
(
  adType VARCHAR(20) NOT NULL,
  adCost FLOAT NOT NULL,
  adID INT NOT NULL,
  movieID INT NOT NULL,
  PRIMARY KEY (adID),
  FOREIGN KEY (movieID) REFERENCES movies(movieID)
);

CREATE TABLE food
(
  foodSize VARCHAR(10) NOT NULL,
  foodDiscount FLOAT NOT NULL,
  foodPrice FLOAT NOT NULL,
  foodName VARCHAR(20) NOT NULL,
  foodID INT NOT NULL,
  PRIMARY KEY (foodID)
);

CREATE TABLE provider
(
  providerID INT NOT NULL,
  providerAmount INT NOT NULL,
  providerPayment FLOAT NOT NULL,
  PRIMARY KEY (providerID)
);

CREATE TABLE Equipment
(
  equipmentID INT NOT NULL,
  equipmentName VARCHAR(20) NOT NULL,
  PRIMARY KEY (equipmentID)
);

CREATE TABLE movies
(
  movieID INT NOT NULL,
  removalDate DATE NOT NULL,
  movieName VARCHAR(40) NOT NULL,
  genre VARCHAR(10) NOT NULL,
  rating FLOAT NOT NULL,
  releaseDate DATE NOT NULL,
  releaseYear INT NOT NULL,
  PRIMARY KEY (movieID)
);

CREATE TABLE Theater
(
  theaterID INT NOT NULL,
  numOfChairs INT NOT NULL,
  VIP VARCHAR(10) NOT NULL,
  numberOfRows INT NOT NULL,
  chairaInRow INT NOT NULL,
  PRIMARY KEY (theaterID)
);

CREATE TABLE Tickets
(
  ticketChair INT NOT NULL,
  ticketLine INT NOT NULL,
  ticketID INT NOT NULL,
  ticketStatus VARCHAR(10) NOT NULL,
  PRIMARY KEY (ticketID)
);

CREATE TABLE area
(
  areaName VARCHAR(20) NOT NULL,
  areaID INT NOT NULL,
  areaCountry VARCHAR(20) NOT NULL,
  PRIMARY KEY (areaID)
);

CREATE TABLE city
(
  cityName VARCHAR(20) NOT NULL,
  cityId INT NOT NULL,
  areaId INT NOT NULL,
  PRIMARY KEY (cityId),
  FOREIGN KEY (areaId) REFERENCES area(areaId)
);

CREATE TABLE branch
(
  branchID INT NOT NULL,
  branchName VARCHAR(20) NOT NULL,
  branchNumOfTheatres INT NOT NULL,
  branchAddress VARCHAR(40) NOT NULL,
  cityId INT NOT NULL,
  equipmentID INT NOT NULL,
  providerID INT NOT NULL,
  PRIMARY KEY (branchID),
  FOREIGN KEY (cityId) REFERENCES city(cityId),
  FOREIGN KEY (equipmentID) REFERENCES Equipment(equipmentID),
  FOREIGN KEY (providerID) REFERENCES provider(providerID)
);

CREATE TABLE Orders
(
  orderId INT NOT NULL,
  orderCost FLOAT NOT NULL,
  orederDiscount FLOAT NOT NULL,
  orederNumOfTickets INT NOT NULL,
  PRIMARY KEY (orderId)
);

CREATE TABLE Workers
(
  workerId INT NOT NULL,
  workerExperience INT NOT NULL,
  workerWage FLOAT NOT NULL,
  workerTask VARCHAR(20) NOT NULL,
  PRIMARY KEY (workerId)
);

CREATE TABLE costumer
(
  costumerId INT NOT NULL,
  costumerMembership VARCHAR(20) NOT NULL,
  costumerRegisterationDate DATE NOT NULL,
  costumerPhoneNumber INT NOT NULL,
  costumerEmail VARCHAR(30) NOT NULL,
  orderId INT NOT NULL,
  PRIMARY KEY (costumerId),
  FOREIGN KEY (orderId) REFERENCES Orders(orderId)
);

CREATE TABLE FoodForProvider
(
  receptionID INT NOT NULL,
  providerID INT NOT NULL,
  PRIMARY KEY (receptionID, providerID),
  FOREIGN KEY (receptionID) REFERENCES food(foodID),
  FOREIGN KEY (providerID) REFERENCES provider(providerID)
);

CREATE TABLE TicketForMovies
(
  movieID INT NOT NULL,
  ticketID INT NOT NULL,
  PRIMARY KEY (movieID, ticketID),
  FOREIGN KEY (movieID) REFERENCES movies(movieID),
  FOREIGN KEY (ticketID) REFERENCES Tickets(ticketID)
);

CREATE TABLE TicketForTheatre
(
  theaterID INT NOT NULL,
  ticketID INT NOT NULL,
  PRIMARY KEY (theaterID, ticketID),
  FOREIGN KEY (theaterID) REFERENCES Theater(theaterID),
  FOREIGN KEY (ticketID) REFERENCES Tickets(ticketID)
);

CREATE TABLE EquipmentForProvider
(
  equipmentID INT NOT NULL,
  providerID INT NOT NULL,
  PRIMARY KEY (equipmentID, providerID),
  FOREIGN KEY (equipmentID) REFERENCES Equipment(equipmentID),
  FOREIGN KEY (providerID) REFERENCES provider(providerID)
);

CREATE TABLE MaintenanceReport
(
  cleanliness VARCHAR(10) NOT NULL,
  reportDate DATE NOT NULL,
  bathroomCondition VARCHAR(10) NOT NULL,
  seatsCondition VARCHAR(10) NOT NULL,
  projectorCondition VARCHAR(10) NOT NULL,
  reportID INT NOT NULL,
  workerId INT NOT NULL,
  PRIMARY KEY (reportID),
  FOREIGN KEY (workerId) REFERENCES Workers(workerId)
);

CREATE TABLE malfunction
(
  malfunctionDecsription VARCHAR(40) NOT NULL,
  isFixed VARCHAR(10) NOT NULL,
  malfunctionID INT NOT NULL,
  branchID INT NOT NULL,
  theaterID INT NOT NULL,
  PRIMARY KEY (malfunctionID),
  FOREIGN KEY (branchID) REFERENCES branch(branchID),
  FOREIGN KEY (theaterID) REFERENCES Theater(theaterID)
);

CREATE TABLE AdForArea
(
  adID INT NOT NULL,
  areaID INT NOT NULL,
  PRIMARY KEY (adID, areaID),
  FOREIGN KEY (adID) REFERENCES advertisement(adID),
  FOREIGN KEY (areaID) REFERENCES area(areaID)
);
