create database RainbowSchoolsAPI

use RainbowSchoolsAPI

CREATE TABLE students (
    student_id INT  PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    class VARCHAR(50)
)

CREATE TABLE subjects (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(100) NOT NULL
)

CREATE TABLE Teachers (
    Teacher_id INT PRIMARY KEY,
    Teacher_name VARCHAR(100) NOT NULL
)

CREATE TABLE marks (
    mark_id INT  PRIMARY KEY,
    student_id INT,
    subject_id INT,
    teacher_id INT,
    marks_obtained DECIMAL(5,2),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id),
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
)
insert into subjects values(1,'Maths')
insert into subjects values(2,'physics')

insert into Teachers values(1,'Raja')
insert into Teachers values(2,'Kiran')

insert into students values(1,'Nirmal','X')
insert into students values(2,'Arun','XII')
insert into students values(3,'Hari','IX')

insert into marks values(1,2,2,2,88.50)
insert into marks values(2,3,1,1,95.54)
insert into marks values(3,1,2,1,99.56)

select * from students
select * from subjects
select * from Teachers
select * from marks

