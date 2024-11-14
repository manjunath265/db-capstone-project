SELECT `menu name` FROM `menu`
WHERE menu.MenuId =  ANY(SELECT Orders.MenuId FROM Orders Where Quantity>2)