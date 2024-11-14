SELECT 
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