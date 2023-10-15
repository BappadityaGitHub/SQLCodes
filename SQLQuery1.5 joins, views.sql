CREATE TABLE Student (       
 
  id int PRIMARY KEY IDENTITY,      
 
  admission_no varchar(45) NOT NULL,   
 
  first_name varchar(45) NOT NULL,       
 
  last_name varchar(45) NOT NULL,   
 
  age int,   
 
  city varchar(25) NOT NULL       
 
);     
 
 
 
CREATE TABLE Fee (    
 
  admission_no varchar(45) NOT NULL,   
 
  course varchar(45) NOT NULL,       
 
  amount_paid int,     
 
);
  

INSERT INTO Student (admission_no, first_name, last_name, age, city)        
 
VALUES (3354,'Luisa', 'Evans', 13, 'Texas'),        
 
(2135, 'Paul', 'Ward', 15, 'Alaska'),        
 
(4321, 'Peter', 'Bennett', 14, 'California'),     
 
(4213,'Carlos', 'Patterson', 17, 'New York'),        
 
(5112, 'Rose', 'Huges', 16, 'Florida'),   
 
(6113, 'Marielia', 'Simmons', 15, 'Arizona'),     
 
(7555,'Antonio', 'Butler', 14, 'New York'),        
 
(8345, 'Diego', 'Cox', 13, 'California');   
 
   
 
   
 
INSERT INTO Fee (admission_no, course, amount_paid)        
 
VALUES (3354,'Java', 20000),        
 
(7555, 'Android', 22000),        
 
(4321, 'Python', 18000),     
 
(8345,'SQL', 15000),        
 
(5112, 'Machine Learning', 30000);


   Select *from Student
  
   Select*from Fee

--INNER JOIN 
 
SELECT Student.admission_no, Student.first_name, Student.last_name, Fee.course, Fee.amount_paid   
 
FROM Student   
 
INNER JOIN Fee   
 
ON Student.admission_no = Fee.admission_no;   
 
  
 
--LEFT JOIN 
 
SELECT* ---------------- Student.admission_no, Student.first_name, Student.last_name, Fee.course, Fee.amount_paid   
 
FROM Student   
 
LEFT OUTER JOIN Fee   
 
ON Student.admission_no = Fee.admission_no;   
 
  
 
_--RIGHT JOIN 
 
SELECT* --------- Student.admission_no, Student.first_name, Student.last_name, Fee.course, Fee.amount_paid   
 
FROM Student   
 
RIGHT OUTER JOIN Fee   
 
ON Student.admission_no = Fee.admission_no;   
 
  
 
--FULL OUTER JOIN 
 
SELECT* ------------ Student.admission_no, Student.first_name, Student.last_name, Fee.course, Fee.amount_paid   
 
FROM Student   
 
FULL OUTER JOIN Fee   
 
ON Student.admission_no = Fee.admission_no;

SELECT* FROM Student   
 
INNER JOIN Fee   
 
ON Student.admission_no = Fee.admission_no;  

create view vw_student_1
as 
Select * from student where id=5

select * from vw_student_1

create view vw_student_2
as 
Select * from student 


Select * from vw_student_2

create view vw_student_3
as 
Select * from student where id=1 and id=7


select* from  vw_student_3
create view vw_student_4
as 
Select * from student where id=1 

select* from  vw_student_4


CREATE TABLE Meals(MealName VARCHAR(100)) 
 
CREATE TABLE Drinks(DrinkName VARCHAR(100)) 
 
INSERT INTO Drinks 
 
VALUES('Orange Juice'), ('Tea'), ('Cofee') 
 
INSERT INTO Meals 
 
VALUES('Omlet'), ('Fried Egg'), ('Sausage') 
 
SELECT * 
 
FROM Meals; 
 
SELECT * 
 
FROM Drinks 
 
  
 
  
 
SELECT * FROM Meals  -----------cross joins
 
CROSS JOIN Drinks