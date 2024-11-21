DELIMITER //

CREATE PROCEDURE CheckBooking (
    IN booking_date DATE,
    IN table_number INT
)
BEGIN
    DECLARE bookedTable INT DEFAULT 0;
    
    -- Use backticks for the column names with spaces
    SELECT COUNT(*) INTO bookedTable
    FROM Bookings
    WHERE Bookingdate = booking_date AND `table no` = table_number;
    
    IF bookedTable > 0 THEN
        SELECT CONCAT("Table ", table_number, " is already booked.") AS "Booking status";
    ELSE
        SELECT CONCAT("Table ", table_number, " is not booked.") AS "Booking status";
    END IF;
END //

DELIMITER ;
