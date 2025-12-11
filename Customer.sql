--Exercise 1:
USE dummy
CREATE TABLE Customer(
    Customer_id INT,
    Customer_name VARCHAR(50),
    Customer_address VARCHAR(100),
    Pincode INT(6),
    State VARCHAR(20)
)

SELECT * FROM Customer

--Exercise 2:
INSERT INTO Customer VALUES(1,"John Doe","392 Sunset Blvd,New York",10059,"NT") 
INSERT INTO Customer VALUES(2,"Mary Smith","6900 Main St ,San Francisco",94032, "CA")
INSERT INTO Customer VALUES(3,"Richard Newman","2040 Riverside Rd, San Diego",92010,"CA")
INSERT INTO Customer VALUES(4,"Cathy Cook","4010 Speedway, Tucson",85719,"AZ")

SELECT * FROM Customer

--Exercise 3:
ALTER TABLE Customer CHANGE Customer_address Address VARCHAR(100)
SELECT * FROM Customer

--Exercise 4:
ALTER TABLE Customer ADD Mobile_Number INT
SELECT * FROM Customer

--Exercise 5:
UPDATE Customer SET Mobile_Number=822061234 WHERE Customer_name="Mary Smith"
SELECT * FROM Customer

--Exercise 6:
DELETE FROM Customer WHERE Pincode=92010
SELECT * FROM Customer

--Exercise 7:
SELECT * FROM Customer WHERE State="CA"

--Exercise 8:
SELECT * FROM Customer WHERE Customer_id>2

--Exercise 9:
ALTER TABLE Customer DROP COLUMN State
SELECT * FROM Customer

--Exercise 10:
TRUNCATE Table Customer