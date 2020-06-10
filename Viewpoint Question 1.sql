/*To test my SQL Queries I first created the two tables using the following
CREATE TABLE statements:*/

CREATE TABLE name_table(
   StudentID VARCHAR(4) NOT NULL PRIMARY KEY
  ,Name      VARCHAR(8) NOT NULL
);
INSERT INTO name_table(StudentID,Name) VALUES ('V001','Abe');
INSERT INTO name_table(StudentID,Name) VALUES ('V002','Abhay');
INSERT INTO name_table(StudentID,Name) VALUES ('V003','Acelin');
INSERT INTO name_table(StudentID,Name) VALUES ('V004','Adelphos');


CREATE TABLE mark_table(
   StudentID   VARCHAR(4) NOT NULL PRIMARY KEY
  ,Total_marks INTEGER  NOT NULL
);
INSERT INTO mark_table(StudentID,Total_marks) VALUES ('V001',95);
INSERT INTO mark_table(StudentID,Total_marks) VALUES ('V002',80);
INSERT INTO mark_table(StudentID,Total_marks) VALUES ('V003',74);
INSERT INTO mark_table(StudentID,Total_marks) VALUES ('V004',81);

/*Then to retrieve the desired data from the two tables I used the following query:*/

SELECT name_table.studentid, name_table.name
FROM name_table, mark_table 
WHERE mark_table.StudentID=name_table.studentid 
AND mark_table.total_marks > (
  SELECT total_marks FROM mark_table WHere mark_table.studentid = 'V002'
)