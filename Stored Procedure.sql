Use mydb;
CREATE PROCEDURE GetMaximumQuantity()
Select MAX(Quantity) FROM Orders;

CALL GetMaximumQuantity()

