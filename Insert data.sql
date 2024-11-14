show databases;
USE mydb;
SHOW tables;
-- Populating Customerdetails table with 6 rows
INSERT INTO `mydb`.`Customerdetails` (`customer id`, `Customer name`, `Contact details`, `Email`)
VALUES
  (1, 'Alice Johnson', 1234567890, 'alice@example.com'),
  (2, 'Bob Smith', 2345678901, 'bob@example.com'),
  (3, 'Charlie Brown', 3456789012, 'charlie@example.com'),
  (4, 'Daisy Thomas', 4567890123, 'daisy@example.com'),
  (5, 'Ethan Hunt', 5678901234, 'ethan@example.com'),
  (6, 'Fiona Lee', 6789012345, 'fiona@example.com');

-- Populating Bookings table with 6 rows
INSERT INTO `mydb`.`Bookings` (`booking id`, `Bookingdate`, `table no`, `customer id`)
VALUES
  (1, '2024-11-01', 5, 1),
  (2, '2024-11-02', 3, 2),
  (3, '2024-11-03', 4, 3),
  (4, '2024-11-04', 2, 4),
  (5, '2024-11-05', 1, 5),
  (6, '2024-11-06', 6, 6);

-- Populating menuitems table with 6 rows
INSERT INTO `mydb`.`menuitems` (`menuitemsid`, `coursename`, `startername`, `dessertname`)
VALUES
  (1, 'Italian', 'Bruschetta', 'Tiramisu'),
  (2, 'Indian', 'Samosa', 'Gulab Jamun'),
  (3, 'Chinese', 'Spring Rolls', 'Mango Pudding'),
  (4, 'Mexican', 'Nachos', 'Churros'),
  (5, 'Japanese', 'Sushi', 'Mochi'),
  (6, 'French', 'Quiche', 'Crème Brûlée');

-- Populating menu table with 6 rows
INSERT INTO `mydb`.`menu` (`MenuId`, `menu name`, `cuisines`, `menuitemsid`)
VALUES
  (1, 'Lunch Special', 'Italian', 1),
  (2, 'Dinner Feast', 'Indian', 2),
  (3, 'Evening Delight', 'Chinese', 3),
  (4, 'Mexican Fiesta', 'Mexican', 4),
  (5, 'Sushi Night', 'Japanese', 5),
  (6, 'French Gourmet', 'French', 6);

-- Populating Delivery table with 6 rows
INSERT INTO `mydb`.`Delivery` (`Delivery ID`, `Delivery date`, `status`)
VALUES
  (1, '2024-11-04', 'Delivered'),
  (2, '2024-11-05', 'In Transit'),
  (3, '2024-11-06', 'Pending'),
  (4, '2024-11-07', 'Delivered'),
  (5, '2024-11-08', 'Cancelled'),
  (6, '2024-11-09', 'Scheduled');

-- Populating Orders table with 6 rows
INSERT INTO `mydb`.`Orders` (`OrderID`, `OrderDate`, `Quantity`, `Total Cost`, `MenuID`, `customer id`, `Delivery ID`, `booking id`)
VALUES
  (1, '2024-11-01', 2, 40, 1, 1, 1, 1),
  (2, '2024-11-02', 3, 60, 2, 2, 2, 2),
  (3, '2024-11-03', 1, 30, 3, 3, 3, 3),
  (4, '2024-11-04', 4, 80, 4, 4, 4, 4),
  (5, '2024-11-05', 2, 50, 5, 5, 5, 5),
  (6, '2024-11-06', 3, 90, 6, 6, 6, 6);

-- Populating Staff Information table with 6 rows
INSERT INTO `mydb`.`Staff Information` (`staff id`, `name`, `contact number`, `Email`, `role`, `Salary`, `customer id`)
VALUES
  (1, 'Diana Prince', 4567890123, 'diana@example.com', 'Manager', 5000.00, 1),
  (2, 'Clark Kent', 5678901234, 'clark@example.com', 'Chef', 3500.00, 2)





