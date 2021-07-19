SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON student_id = students.id
WHERE students.name = 'Ibrahim Schimmel';

