-- flights.sql
CREATE TABLE Flights (
    flightID INT PRIMARY KEY,
    flightNumber VARCHAR(10),
    origin VARCHAR(100),
    destination VARCHAR(100),
    date DATE,
    time TIME
);

INSERT INTO Flights (flightID, flightNumber, origin, destination, date, time) VALUES
(69, 'FL123', 'Durban', 'Johannesburg', '2024-11-10', '08:00:00'),
(28, 'FL456', 'Cape Town', 'Durban', '2024-11-11', '12:00:00'),
(103, 'FL789', 'Australia', 'Port Shepstone', '2024-11-12', '16:00:00');
