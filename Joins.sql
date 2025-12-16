/*
Types of Joins
 > CROSS JOIN 
 > INNER JOIN
 > LEFT JOIN
 > RIGHT JOIN
 > FULL JOIN

-----> CROSS JOIN :

-----> INNER JOIN :
         >Only common data from both tables is shown.
         >If:
            Table A has IDs: 1, 2, 3

            Table B has IDs: 2, 3, 4

            >>INNER JOIN result: 2, 3
         > It is similar to intersection of two data sets

-----> LEFT JOIN :
         > LEFT JOIN: all left rows + matching right rows

*/


CREATE SCHEMA Food;

USE food;
CREATE Table Restaurant(
    id INT,
    name VARCHAR(50),
    location VARCHAR(100)
);

CREATE Table Orders(
    order_id INT,
    restaurant_id INT,
    order_date DATE
);

INSERT INTO Restaurant(id,name,location)
VALUES
    (1,"HUNGRY BIRDS","NAGERCOIL"),
    (2,"TORI","TIRUNELVELI"),
    (3,"ARYA BHAVAN","CHENNAI"),
    (4,"DINDUGAL THALAPAKKTU","COIMBATORE"),
    (5,"IRANI RESTAURANT","TRIVANDRUM"),
    (6,"CITY BITES",NULL)

INSERT INTO orders(order_id,restaurant_id,order_date)
VALUES
    (1,2,'2025-08-16'),
    (2,2,'2025-08-17'),
    (3,4,'2025-08-20'),
    (4,1,'2025-08-21'),
    (5,4,'2025-08-21'),
    (6,NULL,'2025-08-25'),
    (7,NULL,'2025-08-30');

SELECT * FROM restaurant;
SELECT * FROM orders;

--CROSS JOIN
 SELECT * FROM restaurant,orders; 

--INNER JOIN
-- Result Table => id,name from restaurant and order id,order date from orders

    -->>> Using WHERE Clause:
        -- 1)
            SELECT restaurant.id,restaurant.name,restaurant.location,orders.order_id,orders.order_date 
            FROM restaurant,orders
            WHERE restaurant.id=orders.restaurant_id

        --2) 
        -->Ordering by restaurant_id
            SELECT restaurant.id,restaurant.name,orders.order_id,orders.order_date 
            FROM restaurant,orders
            WHERE restaurant.id=orders.restaurant_id ORDER BY restaurant_id

        -->Ordering by date
            SELECT orders.order_id,restaurant.name,restaurant.location,orders.order_date
            FROM orders,restaurant
            WHERE restaurant.id=orders.restaurant_id
            ORDER BY order_date

    -->>> Using JOIN:
         -- 1)
          SELECT restaurant.id,restaurant.name,restaurant.location,orders.order_id,orders.order_date
          FROM restaurant
          JOIN orders
          ON restaurant.id=orders.restaurant_id

         -- 2) Using JOIN AND 
         SELECT o.order_id,r.name,r.location,o.order_date
         FROM restaurant AS r
         JOIN orders AS o
         ON r.id=o.order_id

         --3) Using INNER JOIN
         SELECT r.id,r.name,r.location,o.order_date
         FROM restaurant AS r 
         INNER JOIN orders AS o 
         ON r.id=o.restaurant_id
         
         -- 4) Using Order By
         SELECT r.id,r.name,r.location,o.order_date
         FROM restaurant AS r 
         INNER JOIN orders AS o 
         ON r.id=o.restaurant_id
         ORDER BY r.id

    