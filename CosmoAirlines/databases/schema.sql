-- schema.sql
CREATE TABLE Users (
    userID INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(100)
);

CREATE TABLE Flights (
    flightID INT PRIMARY KEY,
    flightNumber VARCHAR(10),
    origin VARCHAR(100),
    destination VARCHAR(100),
    date DATE,
    time TIME
);

CREATE TABLE Reservations (
    reservationID INT PRIMARY KEY,
    userID INT,
    flightID INT,
    seatNumber VARCHAR(10),
    status VARCHAR(50),
    FOREIGN KEY (userID) REFERENCES Users(userID),
    FOREIGN KEY (flightID) REFERENCES Flights(flightID)
);

CREATE TABLE Payments (
    paymentID INT PRIMARY KEY,
    reservationID INT,
    amount DECIMAL(10, 2),
    paymentMethod VARCHAR(50),
    status VARCHAR(50),
    FOREIGN KEY (reservationID) REFERENCES Reservations(reservationID)
);

CREATE TABLE Admins (
    adminID INT PRIMARY KEY,
    name VARCHAR(100),
    role VARCHAR(50)
);
