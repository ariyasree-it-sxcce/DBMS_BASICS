/* 

Aggregate Functions:

 >SUM()
 >MAX()
 >MIN()
 >AVG()
 >COUNT() 
 
 */

USE dummy 

CREATE TABLE Pupil(
    Name VARCHAR(20),
    Mark INT,
    Department VARCHAR(10)
)

INSERT INTO pupil VALUES("PRANAV",30,"CSE")
INSERT INTO pupil VALUES("Dev",80,"IT")
INSERT INTO pupil VALUES("Shruthi",40,"AI/DS")
INSERT INTO pupil VALUES("Charu",60,"IT")
INSERT INTO pupil VALUES("Anusha",80,"MECH")
INSERT INTO pupil VALUES("SARA",99,"CSE")

UPDATE pupil SET Mark=80 WHERE Department="MECH"

--1.SUM() 
 SELECT SUM(Mark) FROM pupil  
 SELECT SUM(Mark) as TotalMark FROM pupil

SELECT * FROM pupil 

 --MAX()
SELECT MAX(Mark) FROM pupil
SELECT MAX(Mark) AS Maximum_Mark FROM pupil
SELECT MAX(MARK) FROM pupil WHERE Department="IT"
SELECT MAX(MARK) AS Maximum_Mark_IT FROM pupil WHERE Department="IT"

--MIN()

SELECT MIN(Mark) FROM pupil 