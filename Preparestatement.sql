Use mydb;
PREPARE GetOrderDetail FROM 
'SELECT OrderID, Quantity, `Total Cost` FROM Orders WHERE `Customer ID` = ?';

SET @id = 1;
EXECUTE GetOrderDetail USING @id;

