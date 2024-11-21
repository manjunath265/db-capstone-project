DELIMITER //

CREATE PROCEDURE CheckBooking (
    IN bookingdate DATE,
    IN table_no INT
)
BEGIN
    DECLARE booking_exists INT;

    -- Debugging: Output inputs for verification
    SELECT bookingdate AS DebugInputDate, table_no AS DebugInputTable;

    -- Check if the table is booked
    SELECT COUNT(*) INTO booking_exists
    FROM Bookings
    WHERE Bookingdate = bookingdate AND `table no` = table_no;

    -- Debugging: Output the result of COUNT(*)
    SELECT booking_exists AS DebugCount;

    -- Return the booking status
    IF booking_exists > 0 THEN
        SELECT CONCAT("Table ", table_no, " is booked") AS BookingStatus;
    ELSE
        SELECT CONCAT("Table ", table_no, " is not booked") AS BookingStatus;
    END IF;
END //

DELIMITER ;
