# Peer Documentation SQL
## Rajkeshav Review

### Question 1
- In the main query, used aggregated function **SUM** and **CASE** statement inside it for finding number of male employees. Sum is increased by 1 when 'Male' is encountered.
- Then, used aggregated function **SUM** and **CASE** statement inside it finding number of female employees. Sum is increased by 1 when 'Female' is encountered.
- Then Used **GROUP BY** clause for grouping the table according to the Department.

<br/>

### Question 2
- Used **CASE** and **GREATEST** statement for finding the maximum salary between Jan, Feb and Mar as Value.
- If Jan is greatest then returning Jan, if Feb is greatest then returning Feb else Mar will be greatest
- Then returning maximum values of every month.

<br/>

### Question 3
- Used **DENSE_RANK()** function over individual rows **ORDERED BY** Marks in descending order.
- Used **GROUP_CONCAT()** by candidate_id for displaying multiple id of students with same marks.
- Used **GROUP BY** clause for grouping the table according to the Marks.
- Used **ORDER BY** clause to display table in descending order according to Marks.

<br/>

### Question 4
- First, candidate_email table is self joined using **JOIN** Clause.
- Then, deleting the rows, which have same email and c1's id is greater than c2's id, it will keep the lowest id's value in the table.


## Rohit Review

### Question 1
 - Created a procedure getNumMaleFemale() to find the number of male and female employees in each department
 - If Department entry in employees table is null,then added gender details in Not Assigned
 - Created Case for incrementing the count by 1 whenever male entry is found
 - Created Case for incrementing the count by 1 whenever female entry is found
 - Finally, Called getNumMaleFemale() Procedure to get number of male and female detains department wise

<br/>

### Question 2
- Created a procedure maxAmount() to find the max amount from the rows with month name.
- Used **CASE** statement for finding the maximum salary between Jan, Feb and Mar as Value.
- Called maxAmount() procedure to get max amount from the rows with month name

<br/>

### Question 3
- Created getRank() procedure to get max amount from the rows with month name
- Used **DENSE_RANK()** function over individual rows **ORDERED BY** Marks in descending order.
- Used **GROUP_CONCAT()** by candidate_id for displaying multiple id of students with same marks.
- Called getRank() procedure to rank students in proper order

<br/>

### Question 4
- Created DelDuplicateExceptSmallestID() Procedure to keep the value that has smallest id and delete all the other rows having same value.
- First, email_id table is self joined using **INNER JOIN** Clause.
- Then, deleting the rows that have same email and a's id is greater than b's id, it will keep the lowest id's value in the table.
- Finally, Called DelDuplicateExceptSmallestID() procedure to delete duplicate rows

<br/>
