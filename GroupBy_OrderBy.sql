--Group By & Order By:
/* 

ORDER BY: is used to arrange or sort the result in ascending or descending order, and it does not combine or summarize any data — it only changes the order in which rows appear.

GROUP BY: is used to group rows that have the same value in a specified column, and it is mainly used with aggregate functions like COUNT, SUM, AVG, MAX, and MIN to produce summary results for each group.

When both are used together, GROUP BY groups the data first, and then ORDER BY sorts the grouped result. 

*/

--EXERCISE:1
   use dummy;

   CREATE Table Exam(
      Name VARCHAR(20),
      Mark INT,
      Department VARCHAR(10)
   );

   SELECT * FROM exam;

   INSERT INTO exam VALUES("PRANAV",30,"CSE");
   INSERT INTO exam VALUES("Dev",80,"IT");
   INSERT INTO exam VALUES("Shruthi",40,"CSE");
   INSERT INTO exam VALUES("Charu",60,"IT");
   INSERT INTO exam VALUES("Anusha",70,"MECH");
   INSERT INTO exam VALUES("Sara",93,"CSE");
   INSERT INTO exam VALUES("Arun",98,"MECH");
   SELECT * FROM exam

   --ORDER BY 
   SELECT Name,Mark FROM exam ORDER BY Mark DESC;
   SELECT Name,Mark,Department FROM exam ORDER BY Mark ASC;

   --GROUP BY

   SELECT AVG(MARK) FROM exam GROUP BY Department;
   SELECT AVG(Mark) AS AVERAGE FROM exam GROUP BY Department;
   SELECT AVG(Mark),Department FROM exam GROUP BY Department;
   SELECT COUNT(Name),Department FROM exam GROUP BY Department

   --GROUP BY & ORDER BY

   SELECT COUNT(Name),Department FROM exam GROUP BY Department ORDER BY COUNT(Name) DESC;
   SELECT COUNT(Name),Department  FROM exam GROUP BY Department ORDER BY COUNT(Name) ASC;


--EXERCISE:2
/*  
  1. CREATE A EMPLOYEE TABLE.

   (1, 'JOHN', 'DOE', 'HR', 55000),
   (2, 'JANE', 'SMITH', 'IT', 60000),
   (3, 'BOB', 'JOHNSON', 'IT', 62000),
   (4, 'ALICE', 'WILLIAMS', 'HR', 54000),
   (5, 'EVA', 'DAVIS', 'FINANCE', 58000),
   (6, 'MIKE', 'BROWN', 'FINANCE', 59000); 
   
*/

use dummy;

Create TABLE Employee(
   Emp_id INT,
   Emp_name VARCHAR(20),
   Last_name VARCHAR(20),
   Department VARCHAR(10),
   Salary INT
);

SELECT * FROM employee;

INSERT INTO employee (Emp_id,Emp_name,Last_name,Department,Salary)
   VALUES
   (1,"JOHN","DOE","HR",55000),
   (2,"Jane","SMITH","IT",60000),
   (3,"BOB","JOHNSON","IT",62000),
   (4,"ALICE","WILLIAMS","HR",54000),
   (5,"EVA","BROWN","FINANCE",55000),
   (6,"MIKE","DAVIS","FINANCE",59000);
   (7,"DANNY","DAVIS","FINANCE",56000)

SELECT * FROM employee;

--LIST ALL EMPLOYEES IN ALPHABETICAL ORDER BY LAST NAME:
SELECT * FROM employee ORDER BY Last_name ASC;

--LIST ALL EMPLOYEES IN THE IT DEPARTMENT AND SORT THEM BY SALARY IN DESCENDING ORDER:
SELECT * FROM employee WHERE Department="IT" ORDER BY Salary DESC

--FIND THE TOTAL NUMBER OF EMPLOYEES IN EACH DEPARTMENT:
SELECT COUNT(*),Department from employee GROUP BY Department;

--CALCULATE THE AVERAGE SALARY FOR EACH DEPARTMENT,SORTED IN ASCENDING ORDER BY DEPARTMENT NAME:

SELECT AVG(Salary),Department FROM employee GROUP BY Department ORDER BY Department ASC

--ORDER THE DEPARTMENT WITH THE HIGHEST AVERAGE SALARY:
SELECT Department,AVG(Salary) FROM employee GROUP BY Department ORDER BY AVG(Salary) DESC

--FIND THE DEPARTMENT WITH THE HIGHEST AVERAGE SALARY:
SELECT Department,AVG(Salary) 
FROM employee 
GROUP BY Department 
ORDER BY AVG(Salary) DESC
LIMIT 1;

--Whenever a condition is to be used for aggregate function in group by  there you should use "Having Clause".
SELECT AVG(Salary),Department FROM employee GROUP BY Department HAVING AVG(Salary) <60000;

/* 
FIND DEPARTMENTS HAVE MORE THAN TWO EMPLOYEES : 
*/
SELECT COUNT(Emp_name),Department FROM employee GROUP BY Department HAVING COUNT(Emp_id) > 2;

/* FIND DEPARTMENTS WITH AN AVERAGE SALARY GREATER THAN $55,000 */
SELECT AVG(Salary),Department FROM employee GROUP BY Department HAVING AVG(Salary) >55000;