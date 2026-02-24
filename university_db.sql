CREATE DATABASE IF NOT EXISTS university_db;
USE university_db;

CREATE TABLE Students (
	st_id INT PRIMARY KEY AUTO_INCREMENT,
    st_name VARCHAR(30) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    phone_number VARCHAR(15) UNIQUE,
    date_of_birth DATE,
    city VARCHAR(50),
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    admission_date DATE DEFAULT CURRENT_DATE
						);
                        
CREATE TABLE Departments(
	dep_id INT PRIMARY KEY AUTO_INCREMENT,
    dep_name VARCHAR(30) UNIQUE NOT NULL,
    HOD VARCHAR(30) NOT NULL,
    established_year YEAR NOT NULL,
    CHECK (established_year > 1950)
    );
    
    CREATE TABLE Faculty(
		faculty_id INT PRIMARY KEY AUTO_INCREMENT,
        faculty_name VARCHAR(30) NOT NULL,
        email VARCHAR(100) UNIQUE NOT NULL,
        phone VARCHAR(15),
        salary decimal(10,2) CHECK (salary > 20000),
        dep_id INT
	);
    
    CREATE TABLE Courses(
		course_id INT PRIMARY KEY AUTO_INCREMENT,
        course_name VARCHAR(30) NOT NULL,
        credits INT CHECK(credits BETWEEN 0 AND 5)
	);
    
    CREATE TABLE Enrollments(
		en_id INT PRIMARY KEY AUTO_INCREMENT,
        st_id INT,
        course_id INT,
        enrollment_date DATE DEFAULT CURRENT_DATE,
        grade VARCHAR(2)
	);
        
INSERT INTO Students (st_name, email,
 phone_number, date_of_birth,city, gender) VALUES
 ('Harsha', 'harsha@gmail.com', '9878543210', '2004-05-10', 'Hyderabad', 'Male' ),
 ('Anjali', 'anjali@gmail.com', '9875543210', '2004-05-10', 'Hyderabad', 'Female' ),
 ('Rahul', 'rahul@gmail.com', '9876533210', '2004-05-10', 'Hyderabad', 'Male' ),
 ('Sneha', 'sneha@gmail.com', '9877543210', '2004-05-10', 'Hyderabad', 'Female' ),
 ('Vaishu', 'vaishu@gmail.com', '9886543210', '2004-05-10', 'Hyderabad', 'Male' );
 
 INSERT INTO Departments (dep_name, HOD, established_year) VALUES
('Computer Science', 'Dr. Kumar', 2001),
('Mechanical Engineering', 'Dr. Sharma', 1998),
('Electronics & Communication', 'Dr. Reddy', 2005);

INSERT INTO Faculty (faculty_name, email, phone, salary, dep_id) VALUES
('Dr. Kumar', 'kumar@uni.com', '9000000001', 75000, 1),
('Dr. Mehta', 'mehta@uni.com', '9000000002', 68000, 1),
('Dr. Sharma', 'sharma@uni.com', '9000000003', 72000, 2),
('Dr. Iyer', 'iyer@uni.com', '9000000004', 70000, 3),
('Dr. Singh', 'singh@uni.com', '9000000005', 80000, 2);

INSERT INTO Courses (course_name, credits) VALUES
('Data Structures', 4),
('Database Systems', 3),
('Operating Systems', 4),
('Thermodynamics', 4),
('Digital Electronics', 3),
('Machine Design', 3);

INSERT INTO Enrollments (st_id, course_id, grade) VALUES
(1, 1, 'A'),
(1, 2, 'B'),
(2, 1, 'A'),
(2, 3, 'B'),
(3, 4, 'C'),
(3, 5, 'B'),
(4, 2, 'A'),
(4, 6, 'B'),
(5, 1, 'A'),
(5, 3, 'C');

SHOW CREATE TABLE Students;



