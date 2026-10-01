-- Week 1 Database Assignment
-- Topic: School Management System

-- Create the database
CREATE DATABASE school_management;

-- Select the database
USE school_management;

-- Create Students table
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    email VARCHAR(100),
    course VARCHAR(100)
);

-- Create Teachers table
CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    subject VARCHAR(100),
    email VARCHAR(100)
);

-- Create Courses table
CREATE TABLE courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

-- Insert sample teachers
INSERT INTO teachers (first_name, last_name, subject, email)
VALUES
('Ahmed', 'Hassan', 'Mathematics', 'ahmed@example.com'),
('Fatuma', 'Ali', 'English', 'fatuma@example.com'),
('Mohamed', 'Omar', 'Computer Science', 'mohamed@example.com');

-- Insert sample students
INSERT INTO students (first_name, last_name, age, email, course)
VALUES
('Abdi', 'Hassan', 20, 'abdi@example.com', 'Computer Science'),
('Amina', 'Mohamed', 21, 'amina@example.com', 'Mathematics'),
('Hawa', 'Ali', 19, 'hawa@example.com', 'English');

-- Insert sample courses
INSERT INTO courses (course_name, teacher_id)
VALUES
('Mathematics', 1),
('English', 2),
('Computer Science', 3);

-- Display the students
SELECT * FROM students;

-- Display the teachers
SELECT * FROM teachers;

-- Display the courses
SELECT * FROM courses;