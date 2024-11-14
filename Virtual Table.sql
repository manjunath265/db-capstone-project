-- CREATING VIRTUAL TABLE
CREATE VIEW OrdersViews AS SELECT OrderID, Quantity,`Total Cost`
FROM Orders
WHERE Quantity>2;
SELECT * FROM OrdersViews

