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
      

SELECT MIN(Candidate_id) AS Candidate_ID, Email
FROM candidate_email
GROUP BY Email
ORDER BY Candidate_ID DESC;      