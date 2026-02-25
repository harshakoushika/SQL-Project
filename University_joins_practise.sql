Use university_db;
show tables;
-- inner join sql 
/* this query joins students name w
course name*/
select s.stu_name AS student_name, c.course_name
	from students s
    INNER JOin enrollments e
    ON s.stu_id = e.stu_id
INNER JOIN courses c
ON e.course_id = c.course_id;