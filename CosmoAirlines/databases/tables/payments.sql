-- payments.sql
CREATE TABLE Payments (
    paymentID INT PRIMARY KEY,
    reservationID INT,
    amount DECIMAL(10, 2),
    paymentMethod VARCHAR(50),
    status VARCHAR(50),
    FOREIGN KEY (reservationID) REFERENCES Reservations(reservationID)
);
