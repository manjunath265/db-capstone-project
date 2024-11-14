-- CREATING VIRTUAL TABLE
/*CREATE VIEW OrdersViews AS SELECT OrderID, Quantity,`Total Cost`
FROM Orders
WHERE Quantity>2;
SELECT * FROM OrdersViews*/

-- JOIN
/*SELECT 
    `customerdetails`.`customer id`, 
    `customerdetails`.`Customer name`, 
    `Orders`.`OrderID`, 
    `Orders`.`Total Cost`, 
    `menu`.`menu name`, 
    `menuitems`.`coursename`, 
    `menuitems`.`startername`
FROM 
    `customerdetails`
INNER JOIN `Orders` ON `customerdetails`.`customer id` = `Orders`.`customer id`
INNER JOIN `menu` ON `Orders`.`MenuID` = `menu`.`MenuId`
INNER JOIN `menuitems` ON `menu`.`menuitemsid` = `menuitems`.`menuitemsid`
WHERE 
    `Orders`.`Total Cost` > 50
ORDER BY 
    `Orders`.`Total Cost`
LIMIT 0, 1000;*/

SELECT `menu name` FROM `menu`
WHERE menu.MenuId =  ANY(SELECT Orders.MenuId FROM Orders Where Quantity>2)

