SELECT teachers.name as name, students.name as students, assignments.name as assignment, assistance_requests.completed_at - assistance_requests.started_at as duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN teachers ON teachers.id = teacher_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;

