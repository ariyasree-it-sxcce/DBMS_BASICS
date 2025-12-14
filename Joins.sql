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

INSERT INTO Restaurant 
VALUES(id,name,location)