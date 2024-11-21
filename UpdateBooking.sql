USE mydb;
DELIMITER //
CREATE PROCEDURE UpdateBookings(IN booking_id INT, IN booking_date DATE)
BEGIN
UPDATE Bookings
SET `Bookingdate` = booking_date
WHERE `booking id` = booking_id;
SELECT CONCAT('Booking ', booking_id, ' updated') AS 'BookingStatus';
END;
//
DELIMITER ;

-- CALL UpdateBooking(5,'2024-11-01')