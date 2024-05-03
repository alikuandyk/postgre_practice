CREATE TABLE students (
    student_id SERIAL8 PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    group_id INT NOT NULL,
    FOREIGN KEY (group_id) REFERENCES groups(group_id)
);

CREATE TABLE teachers (
    teacher_id SERIAL8 PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50)
);

CREATE TABLE courses (
    course_id SERIAL8 PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    teacher_id INT NOT NULL,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

CREATE TABLE groups (
    group_id SERIAL8 PRIMARY KEY,
    group_name VARCHAR(100) NOT NULL
);

CREATE TABLE grades (
    grade_id SERIAL8 PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    grade DECIMAL(3, 2),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO teachers (first_name, last_name)
VALUES ('Мария', 'Козлова'),
       ('Александр', 'Смирнов');

INSERT INTO groups (group_name)
VALUES ('Группа 1'),
       ('Группа 2');

INSERT INTO courses (course_name, teacher_id)
VALUES ('Математика', 1),
       ('Физика', 2);

INSERT INTO students (first_name, last_name, group_id)
VALUES ('Иван', 'Петров', 1),
       ('Елена', 'Сидорова', 2),
       ('Алексей', 'Иванов', 1);

INSERT INTO grades (student_id, course_id, grade)
VALUES (7, 1, 4.5),
       (8, 2, 3.8),
       (9, 1, 4.0);

