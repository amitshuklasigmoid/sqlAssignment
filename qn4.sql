USE assignment;

CREATE TABLE candidate_email(
   Candidate_id INT PRIMARY KEY,
   Email VARCHAR(20)
);

INSERT INTO candidate_email
VALUES(45,'abc@gmail.com'),
      (23,'def@gmail.com'),
      (34,'abc@gmail.com'),
      (21,'bcf@gmail.com'),
      (94,'def@gmail.com');
      

create view Temp_info as SELECT MIN(Candidate_id) AS Candidate_ID
FROM candidate_email
GROUP BY Email
ORDER BY Candidate_ID DESC ;

DELETE from candidate_email where candidate_id not in
(select candidate_id from Temp_info);    

SELECT * FROM candidate_email;