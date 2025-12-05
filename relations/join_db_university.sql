USE schema_db_university;

# 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
# students, degrees
/*
SELECT students.id, students.name AS students_name, students.surname AS students_surname, students.registration_number, students.email, degrees.name AS degrees_name
FROM students
JOIN degrees
ON students.degree_id = degrees.id
WHERE degrees.name = "Corso di Laurea in Economia"
*/

# 2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
# degrees, departments

/*
SELECT degrees.id, degrees.name AS degree_name, degrees.level, departments.name AS department_name
FROM degrees
JOIN departments
ON degrees.department_id = departments.id
WHERE degrees.level = "Magistrale" 
AND departments.name = "Dipartimento di Neuroscienze"
*/

# 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
# courses, course_teacher, teachers

/*
SELECT courses.id, courses.name AS course_name, teachers.name, teachers.surname
FROM courses
JOIN course_teacher
ON courses.id = course_teacher.course_id
JOIN teachers
ON  teachers.id = course_teacher.teacher_id
WHERE teachers.id = 44
*/

# 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
# students, degrees, depatrments

/*
SELECT students.id, students.surname AS student_surname, students.name AS student_name, degrees.name AS degree_name, departments.name AS department_name
FROM students
JOIN degrees
ON students.degree_id = degrees.id
JOIN departments 
ON degrees.department_id  = departments.id
ORDER BY students.surname ASC, students.name ASC
*/


# 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
# degrees, courses, teachers, course_teacher

/*
SELECT degrees.id, degrees.name AS degree_name, courses.name AS course_name, teachers.surname AS teacher_surname, teachers.name AS teacher_name
FROM degrees
JOIN courses
ON courses.degree_id = degrees.id
JOIN course_teacher
ON course_teacher.course_id = courses.id
JOIN teachers
ON course_teacher.teacher_id = teachers.id 
*/


# 6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
# teachers, course_teacher, courses, degrees, departments

/*
SELECT teachers.id, teachers.surname AS teacher_surname, teachers.name AS teacher_name, teachers.email
FROM teachers
JOIN course_teacher
ON course_teacher.teacher_id = teachers.id
JOIN courses
ON course_teacher.course_id = courses.id
JOIN degrees
ON courses.degree_id = degrees.id
JOIN departments
ON degrees.department_id = departments.id
WHERE departments.name = "Dipartimento di Matematica"
*/