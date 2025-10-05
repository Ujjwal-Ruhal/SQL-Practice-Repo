/*
For example, let’s retrieve course_id, prof_id, along with professor’s Name and Salary. 
The join condition is that the ID column from the professor table must match the prof_id column from the teacher table.
*/

SELECT teacher.course_id, teacher.prof_id, professor.Name, professor.Salary
FROM professor 
INNER JOIN teacher ON professor.ID = teacher.prof_id;