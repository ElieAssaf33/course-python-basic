-- SQLite
CREATE TABLE Teacher(
id INT PRIMARY KEY,
name VARCHAR(255) NOT NULL,
surname VARCHAR(255)NOT NULL,
sector VARCHAR(255)NOT NULL,
experience INT
);

INSERT INTO Teacher(id, name, surname, sector, experience)
VALUES(1, 'Petras', 'Petraitis', 'Maths', 2013);

INSERT INTO Teacher(id, name, surname, sector, experience)
VALUES(2, 'Ona', 'Onaite', 'Physics', 2012);

INSERT INTO Teacher(id, name, surname, sector, experience)
VALUES(3, 'Marius', 'Marijus', 'Biology', 2015);

INSERT INTO Teacher(id, name, surname, sector, experience)
VALUES(4, 'Rasa', 'Rasaite', 'English', 2011);

INSERT INTO Teacher(id, name, surname, sector, experience)
VALUES(5, 'Aurimas', 'Aurimaitis', 'Lithuanian', 2018);

INSERT INTO Teacher(id, name, surname, sector, experience)
VALUES(6, 'Gitare', 'Gintarele', 'History', 2020);

SELECT * FROM Teacher where sector = 'Maths';

SELECT * FROM Teacher

SELECT * FROM Teacher where CURRENT_DATE - experience > 8;

UPDATE Teacher SET surname =  'Žoliene' where name = 'Rasa';

DELETE FROM Teacher where id = 4;


CREATE TABLE Student(
id INTEGER PRIMARY KEY AUTOINCREMENT,
Student_name VARCHAR(50)
);

CREATE TABLE Course(
id INTEGER PRIMARY KEY AUTOINCREMENT,
Course_name VARCHAR(50)
);

CREATE TABLE Student_course(
id INTEGER PRIMARY KEY AUTOINCREMENT,
student_id INTEGER REFERENCES Student(id),
course_id INTEGER REFERENCES Course(id)
);


INSERT INTO Student(id, Student_Name)
VALUES(1, 'Lebron');

INSERT INTO Student(id, Student_Name)
VALUES(2, 'Dwayne');

INSERT INTO Student(id, Student_Name)
VALUES(3, 'Jordan');

INSERT INTO Course(id, Course_name)
VALUES(1, 'History');

INSERT INTO Course(id, Course_name)
VALUES(2, 'Maths');

INSERT INTO Course(id, Course_name)
VALUES(3, 'Science');


SELECT Student_name, Course_name FROM Student_course
    JOIN Course ON course_id = Course.id
    JOIN Student ON student_id = Student.id;

INSERT INTO Student_course(student_id, course_id)
VALUES(1, 1);


