USE assignment;

CREATE TABLE candidates (
candidate_id INT,
marks INT,
PRIMARY KEY(candidate_id)
);

INSERT INTO candidates VALUES
(1,98),
(2,78),
(3,87),
(4,98),
(5,78);


SELECT DISTINCT marks "Marks", 
RANK() OVER (ORDER BY marks DESC) AS "Rank", 
GROUP_CONCAT(candidate_id) AS "Candidate_ID" 
FROM candidates 
GROUP BY marks 
ORDER BY marks DESC;
