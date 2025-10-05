CREATE TABLE teacher (
    course_id INT,
    prof_id INT,
    course_name VARCHAR(50) );

INSERT INTO teacher (course_id, prof_id, course_name) VALUES
(1, 1, 'English'),
(1, 3, 'Physics'),
(2, 4, 'Chemistry'),
(2, 5, 'Mathematics');

SELECT * FROM teacher;