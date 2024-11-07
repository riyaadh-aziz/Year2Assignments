-- calculate_total_cost.sql
CREATE PROCEDURE CalculateTotalCost (
    IN p_reservationID INT,
    OUT p_totalCost DECIMAL(10, 2)
)
BEGIN
    SELECT SUM(amount) INTO p_totalCost
    FROM Payments
    WHERE reservationID = p_reservationID;
END;
