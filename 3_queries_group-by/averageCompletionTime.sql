SELECT students.name AS student, avg(assignment_submissions.duration) AS average_assignement_duration
FROM assignment_submissions
JOIN students ON student_id = students.id
WHERE students.end_date IS NULL
GROUP BY student
ORDER BY average_assignement_duration DESC