CREATE SCHEMA CombineTable;
use CombineTable;
CREATE TABLE Person(
    personId INT,
    lastName VARCHAR(100),
    firstName VARCHAR(100)
);
CREATE TABLE Address(
    addressId INT,
    personId INT,
    city VARCHAR(20),
    state VARCHAR(20)
);
INSERT INTO person(personId,lastName,firstName)
VALUES
    (1,"Wang","Allen"),
    (2,"Alice","Bob");

INSERT INTO address(addressId,personId,city,state)
VALUES
    (1,2,"New York City","New York"),
    (2,3,"Leetcode","California");

SELECT p.firstName,p.lastName,a.city,a.state
FROM person AS p
LEFT JOIN address AS a
ON p.personId=a.personId