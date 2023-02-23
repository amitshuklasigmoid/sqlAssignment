USE assignment;

CREATE TABLE employee_salary(
   Name VARCHAR(30) NOT NULL,
   Jan INT NOT NULL,
   Feb INT NOT NULL,
   Mar INT NOT NULL
);

INSERT INTO employee_salary
VALUES('X',5200,9093,3832),
      ('Y',9023,8942,4000),
      ('Z',9834,8197,9903),
      ('W',3244,4321,0293);  

SELECT Name,
       CASE
           WHEN Jan>=Feb AND Jan>=Mar THEN Jan
           WHEN Feb>=Jan AND Feb>=Mar THEN Feb
           ELSE Mar
       END AS Value,
       CASE
           WHEN Jan>=Feb AND Jan>=Mar THEN 'Jan'
           WHEN Feb>=Jan AND Feb>=Mar THEN 'Feb'
           ELSE 'Mar'
       END AS Month
 FROM employee_salary; 
