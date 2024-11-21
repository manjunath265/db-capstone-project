DELIMITER //

CREATE PROCEDURE AddBooking(IN booking_id INT,IN booking_date date, IN table_no INT, IN Customer_id INT)
BEGIN
	DECLARE bookedtable INT DEFAULT 0;
    SELECT COUNT(*) INTO bookedTable
    FROM Bookings
    WHERE Bookingdate = booking_date AND `table no` = table_no;
    IF bookedTable > 0 THEN
        SELECT CONCAT("Table ", table_no, " is already booked on ", booking_date) AS "Booking status";
	ELSE
		INSERT INTO Bookings (`booking id`, `customer id`, Bookingdate, `table no`)
        VALUES (booking_id, booking_date,table_no ,Customer_id );
	SELECT CONCAT("Table ", table_number, " has been successfully booked on ", booking_date) AS "Booking status";
    END IF ;
END //
DELIMITER ;