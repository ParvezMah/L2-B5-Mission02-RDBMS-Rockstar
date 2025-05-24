
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NUll,
    last_name VARCHAR(50) NOT NUll,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES 
    ('John', 'Doe', 20, 'A+', 'Computer Science', 'john.doe@example.com', '2004-05-12', 'O+', 'USA'),
    ('Jane', 'Smith', 22, 'B+', 'Business', 'jane.smith@example.com', '2002-03-18', 'A-', 'UK'),
    ('Michael', 'Johnson', 21, 'A', 'Engineering', 'michael.j@example.com', '2003-07-22', 'B+', 'Canada'),
    ('Emily', 'Davis', 19, 'B', 'Mathematics', 'emily.davis@example.com', '2005-01-30', 'AB+', 'Australia'),
    ('David', 'Wilson', 23, 'C+', 'History', 'david.wilson@example.com', '2001-09-14', 'O-', 'USA'),
    ('Sophia', 'Moore', 20, 'A-', 'Physics', 'sophia.moore@example.com', '2004-06-10', 'B-', 'New Zealand'),
    ('Chris', 'Taylor', 18, 'B+', 'Chemistry', 'chris.taylor@example.com', '2006-12-01', 'A+', 'India'),
    ('Olivia', 'Brown', 21, 'A', 'English Literature', 'olivia.brown@example.com', '2003-10-05', 'O+', 'UK'),
    ('Daniel', 'Anderson', 20, 'B-', 'Biology', 'daniel.anderson@example.com', '2004-08-19', 'AB-', 'South Africa'),
    ('Isabella', 'Thomas', 19, 'C', 'Political Science', 'isabella.thomas@example.com', '2005-02-27', 'A-', 'Germany'),
    ('James', 'Jackson', 22, 'A+', 'Sociology', 'james.jackson@example.com', '2002-11-23', 'O+', 'USA'),
    ('Ava', 'White', 21, 'B+', 'Philosophy', 'ava.white@example.com', '2003-04-15', 'B+', 'Italy'),
    ('Benjamin', 'Harris', 20, 'A', 'Economics', 'ben.harris@example.com', '2004-03-03', 'A+', 'France'),
    ('Mia', 'Martin', 18, 'C+', 'Art', 'mia.martin@example.com', '2006-07-28', 'AB+', 'Spain'),
    ('Logan', 'Thompson', 19, 'B', 'Music', 'logan.thompson@example.com', '2005-05-17', 'O-', 'USA'),
    ('Amelia', 'Garcia', 22, 'A-', 'Psychology', 'amelia.garcia@example.com', '2002-08-06', 'B-', 'Mexico'),
    ('Lucas', 'Martinez', 20, 'B+', 'Anthropology', 'lucas.martinez@example.com', '2004-09-13', 'A+', 'Argentina'),
    ('Charlotte', 'Robinson', 21, 'A', 'Journalism', 'charlotte.robinson@example.com', '2003-12-25', 'O+', 'Canada'),
    ('Ethan', 'Clark', 23, 'B', 'Law', 'ethan.clark@example.com', '2001-06-09', 'AB-', 'USA'),
    ('Harper', 'Rodriguez', 19, 'C-', 'Fashion Design', 'harper.rodriguez@example.com', '2005-11-30', 'A-', 'Brazil'),
    ('Alice', 'Johnson', 20, 'A', 'Mathematics', NULL, '2005-03-15', 'O+', 'USA'),
    ('Bob', 'Smith', 22, 'B', 'Physics', NULL, '2003-07-21', 'A-', 'Canada'),
    ('Charlie', 'Brown', 19, 'C', 'Chemistry', NULL, '2006-11-30', 'B+', 'UK'),
    ('Diana', 'Prince', 21, 'A', 'Biology', NULL, '2004-02-10', 'AB-', 'Australia'),
    ('Ethan', 'Hunt', 23, 'B', 'Computer Science', NULL, '2002-06-12', 'O-', 'USA'),
    ('Fiona', 'Davis', 18, 'C', 'History', NULL, '2007-09-18', 'A+', 'India'),
    ('George', 'Miller', 20, 'A', 'Engineering', NULL, '2005-01-05', 'B-', 'Germany'),
    ('Hannah', 'Wilson', 22, 'B', 'Economics', NULL, '2003-05-23', 'AB+', 'UK'),
    ('Ian', 'Clark', 19, 'C', 'Philosophy', NULL, '2006-12-01', 'O+', 'France'),
    ('Jane', 'Evans', 21, 'A', 'Literature', NULL, '2004-08-09', 'A-', 'USA');

SELECT * from students;


 
SELECT email, age, blood_group from students;
SELECT email as "Student Email" from students;

SELECT * FROM students ORDER BY first_name ASC;
SELECT * FROM students ORDER BY age ASC;
SELECT * FROM students ORDER BY dob ASC;

SELECT country FROM students ORDER BY country ASC;
SELECT DISTINCT country FROM students ORDER BY country ASC;
SELECT DISTINCT blood_group FROM students;


SELECT * FROM students
    -- WHERE country = 'USA';
    -- WHERE grade='A' AND course='Engineering';
    WHERE (country='USA' OR country='Australia') AND age=20;

SELECT * from students
    WHERE age > 20 and course='History';

SELECT * from students
    -- WHERE age <= 20;
    -- WHERE age <> 20;
    WHERE country <> 'USA';


/*
SCALER FUNCTIONS

UPPER()
LOWER()
CONCAT()
LENGTH()
*/
SELECT upper(first_name) as first_name_in_upper_case, * from students;
SELECT concat(first_name, ' ', last_name) from students; --scaler function
SELECT length(first_name) from students; --scaler function


/*
AGGREGATE FUNCTIONS

AVG()
MAX()
MIN()
SUM()
COUNT()
*/
SELECT avg(age) FROM students;  --AGGREGATE FUNCTION
SELECT MAX(age) FROM students;  --AGGREGATE FUNCTION
SELECT MIN(age) FROM students;  --AGGREGATE FUNCTION
SELECT COUNT(age) FROM students;  --AGGREGATE FUNCTION
SELECT SUM(age) FROM students;  --AGGREGATE FUNCTION

SELECT max(length(first_name)) FROM students;




SELECT * from students
    -- WHERE country <> 'USA';
    WHERE NOT country = 'USA';  --NOT



SELECT * from students
    -- SELECT NULL = 1;  --NULL er shate ja kicui korina keno seta null ei asbe
    -- WHERE email = NULL;
    -- WHERE email IS NULL;
    WHERE email IS NOT NULL;


SELECT email from students;
SELECT COALESCE(email, 'Email not Provided') as "Email", blood_group, first_name from students;




--8-8 Exploring IN, BETWEEN, LIKE, and ILIKE Operators in PostgreSQL
-- IN Operator
SELECT * FROM students 
    WHERE country = 'USA' or country = 'CANADA' OR country = 'UK';
    WHERE country IN('USA','CANADA','UK');
    WHERE country NOT IN('USA','CANADA','UK');


--BETWEEN Operator
SELECT * FROM students
    -- WHERE age BETWEEN 19 and 23;
    -- WHERE dob BETWEEN '2000-01-01' and '2005-01-01';
    WHERE dob BETWEEN '2000-01-01' and '2005-01-01' ORDER BY dob;


--LIKE Operator    Case Sensitive
SELECT * FROM students 
    -- WHERE first_name LIKE '%am';
    -- WHERE first_name LIKE '%a';
    -- WHERE first_name LIKE 'a%';
    -- WHERE first_name LIKE 'A%';
    -- WHERE first_name LIKE '__a%';
    -- WHERE first_name LIKE '___a%';
    -- WHERE first_name LIKE '___a_';
    -- WHERE first_name LIKE '___a_';

--ILIKE Operator    Case InSensitive
SELECT * FROM students 
    WHERE first_name ILIKE 'a%';




--8-9 Pagination with Limit Offset and Data Deletion in PostgreSQL
--LIMIT
SELECT * FROM students LIMIT 5 OFFSET 5;

SELECT * FROM students 
    WHERE country IN('USA','CANADA','UK') LIMIT 5;

--Pagination
SELECT * FROM students LIMIT 5 OFFSET 5 * 0;
SELECT * FROM students LIMIT 5 OFFSET 5 * 1;
SELECT * FROM students LIMIT 5 OFFSET 5 * 2;
SELECT * FROM students LIMIT 5 OFFSET 5 * 3;
SELECT * FROM students LIMIT 5 OFFSET 5 * 4;

--Data Deletion

SELECT * from students WHERE country='USA';

DELETE FROM students
    -- WHERE grade='B';
    WHERE grade='C' AND country='USA';






--8-10 Understanding and Using the UPDATE Operator in PostgreSQL
SELECT * from students;

UPDATE students
    -- SET email = 'default@gmail.com'
    -- WHERE student_id=65;
    SET email = 'default@gmail.com', age=30, course='Web Development'
    WHERE student_id=65;