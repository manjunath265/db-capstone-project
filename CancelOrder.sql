DELIMITER //
CREATE PROCEDURE CancelOrder(IN orderId INT)
BEGIN
DELETE FROM Orders WHERE OrderID = orderId;
END //

DELIMITER ; 
SET SQL_SAFE_UPDATES = 0;
Call CancelOrder(5)
