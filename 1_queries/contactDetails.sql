SELECT name, id,  cohort_id
FROM students
WHERE email IS null OR phone IS NULL;