-- create_booking.sql
CREATE PROCEDURE CreateBooking (
    IN p_userID INT,
    IN p_flightID INT,
    IN p_seatNumber VARCHAR(10),
    IN p_status VARCHAR(50)
)
BEGIN
    INSERT INTO Reservations (userID, flightID, seatNumber, status)
    VALUES (p_userID, p_flightID, p_seatNumber, p_status);
END;
