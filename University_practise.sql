SHOW DATABASES;
USE university_db;
SHOW TABLES;
DESC Students;
Select * FROM Students;
Select st_name, city FROM Students;
Select * FROM Faculty Where salary > 50000;
Select * FROM Students where city = 'Hyderabad';
Select * From Faculty where salary Between 40000 and 80000;
Select * from courses where credits > 3;
Select st_name from students where st_name like 'a%';
desc faculty;
select * from faculty 
order by salary DESC
Limit 3;
desc students;
select * from students order by date_of_birth limit 2;
desc courses;
select credits from courses order by credits desc;
desc courses;
select * from courses;
update faculty
set salary = salary * 1.10
where dep_id = 1;

