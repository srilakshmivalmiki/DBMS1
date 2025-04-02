CREATE DATABASE degree_college;
USE degree_college;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15),
    dob DATE,
    department_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);


CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    department_id INT,
    course_duration VARCHAR(50),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);


CREATE TABLE enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO departments (department_name)
VALUES
    ('Computer Science'),
    ('Mechanical Engineering'),
    ('Electrical Engineering'),
    ('Civil Engineering');


INSERT INTO courses (course_name, department_id, course_duration)
VALUES
    ('Data Structures', 1, '6 Months'),
    ('Algorithms', 1, '6 Months'),
    ('Thermodynamics', 2, '1 Year'),
    ('Circuit Theory', 3, '1 Year'),
    ('Strength of Materials', 4, '6 Months');


INSERT INTO students (name, email, phone, dob, department_id)
VALUES
    ('Rehana', 'rehanashaik@gmail.com', '1234567890', '1998-05-10', 1),
    ('Sravani', 'sravanishetty@gmail.com', '0987654321', '1999-08-15', 2),
    ('Siri', 'sirivalmiki@gmail.com', '1122334455', '2000-01-20', 3),
    ('Amrutha', 'amruthajangam@gmail.com', '5566778899', '1997-11-30', 4);

INSERT INTO enrollments (student_id, course_id)
VALUES
    (1, 1), 
    (1, 2), 
    (2, 3), 
    (3, 4), 
    (4, 5); 
    
SELECT * FROM students;

SELECT * FROM courses;

SELECT * FROM departments;

SELECT * FROM enrollments;