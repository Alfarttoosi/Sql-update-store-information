#1. Select all attributes for all employees and order them alphabetically by last name:
SELECT * FROM Employees ORDER BY lname

#2. Select the first name, last name, city, state and phone number for all employees living in Mississippi (MS)
SELECT fname, lname, city, state, phone
FROM Employees 
WHERE state = "MS";

#3. For each store, display the store’s address, city, state, zip, the manager’s first and last name, and manger’s phone number
SELECT 
Stores.address, Stores.city, Stores.state, Stores.zip, 
Employees.fname, Employees.lname , Employees.phone 
FROM 
Stores INNER JOIN Employees 
ON Employees.EmpID = Stores.Manager; 

#4. Display the names and prices of products with a price over $40, ordered so that the most expensive item is at the top and the least expensive item is at the bottom 
SELECT Product, price
FROM Products
WHERE price > 40
ORDER BY price DESC;

#5. Display the inventory for the Memphis store.  Display the city, product, price and quantity. List each item alphabetically with the price and quantity in stock.  If you cannot get the entire list in one screenshot that is OK – just take a screenshot that shows the first 10 items.

SELECT
City, Product, price, quantity
FROM
(Stores
INNER JOIN Stock ON Stores.StoreID = Stock.StoreID)
INNER JOIN Products ON Stock.Invid = Products.InvID
WHERE
City = "Memphis" AND quantity > 0
ORDER BY
Product ASC;

#6. Display the name and price of all product with the word “water” anywhere in the product name.

SELECT Product, price
FROM  Products
WHERE Product LIKE '*water*';
SELECT
City, Product, price, quantity
FROM
(Stores
INNER JOIN Stock ON Stores.StoreID = Stock.StoreID)
INNER JOIN Products ON Stock.Invid = Products.InvID
WHERE
City = "Memphis" AND quantity > 0
ORDER BY
Product ASC;

#7. Add a new employee with the following information (No Screenshot needed)
Employee ID: 9999
Name: Molly Smith
Address: 125 Timber Lane
City: Oxford
State: MS
Zip: 38655
Phone: 662-555-3245

INSERT INTO Employees (EmpID, fname, lname, address, city, state, zip, phone)
VALUES (9999, 'Molly', 'Smith', '125 Timber Lane', 'Oxford', 'MS', '38655', '662-555-3245');

#8. Associate the employee created in #7 with the Tucson store.  Start date is 3/23/2019.  (No Screenshot needed)

INSERT INTO Emp_Store (EmpID, StoreID, StartDate)
VALUES (9999, 3, '2019-03-23');

#9. You are changing management styles!  Make the employee you created in #7 the manager for all stores in Mississippi (MS) – do this using one SQL command (No Screenshot needed)
UPDATE Stores 
SET Manager = '9999'
WHERE State = 'MS';

#10. For each store, display the address, city, state, zip, manager’s first and last name, and manger’s phone number (Do this AFTER steps 7-9)
SELECT
Stores.Address, Stores.City, Stores.State, Stores.Zip,
Employees.fname, Employees.lname, Employees.phone
FROM
Stores
INNER JOIN Employees ON Stores.Manager = Employees.EmpID;

SELECT
City, Product, price, quantity
FROM
(Stores
INNER JOIN Stock ON Stores.StoreID = Stock.StoreID)
INNER JOIN Products ON Stock.Invid = Products.InvID
WHERE
City = "Memphis" AND quantity > 0
ORDER BY
Product ASC;




