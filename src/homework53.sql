CREATE TABLE students
(
    id           SERIAL8 PRIMARY KEY,
    first_name   VARCHAR(50) NOT NULL,
    last_name    VARCHAR(50),
    age          INT8,
    contact_info VARCHAR(100)
);

CREATE TABLE courses
(
    id          SERIAL8 PRIMARY KEY,
    title       VARCHAR(100) NOT NULL,
    description VARCHAR(100),
    schedule    VARCHAR(100) NOT NULL
);

CREATE TABLE students_courses
(
    id SERIAL8 PRIMARY KEY,
    student_id INT8 REFERENCES students(id),
    course_id int8 REFERENCES courses(id)
);

INSERT INTO students (first_name, last_name, age, contact_info)
VALUES ('Ali', 'Kuandyk', 19, 'alikuandyk26@gmail.com'),
       ('Yersaiyn', 'Saipbek', 18, 'example1@example.com'),
       ('Daulet', 'Tulegenov', 18, 'example2@example.com');

INSERT INTO courses (title, description, schedule)
VALUES ('Introduction to SQL', 'description1', 'schedule1'),
       ('Discrete Math', 'description2', 'schedule2'),
       ('Psychology', 'description3', 'schedule3');

INSERT INTO students_courses (student_id, course_id)
VALUES (1, 1),
       (1, 2),
       (2, 1),
       (3, 3);

SELECT first_name
FROM students
JOIN students_courses ON students.id = students_courses.student_id
WHERE students_courses.course_id = 1;

SELECT title
FROM courses
JOIN students_courses ON courses.id = students_courses.course_id
WHERE students_courses.student_id = 1;



