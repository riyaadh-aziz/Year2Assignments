-- reservations.sql
CREATE TABLE Reservations (
    reservationID INT PRIMARY KEY,
    userID INT,
    flightID INT,
    seatNumber VARCHAR(10),
    status VARCHAR(50),
    FOREIGN KEY (userID) REFERENCES Users(userID),
    FOREIGN KEY (flightID) REFERENCES Flights(flightID)
);

INSERT INTO Reservations (reservationID, userID, flightID, seatNumber, status) VALUES
(1, 1, 101, '12A', 'Confirmed'),
(2, 2, 102, '14B', 'Confirmed'),
(3, 3, 103, '16C', 'Pending');
