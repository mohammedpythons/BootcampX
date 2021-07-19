SELECT cohorts.name AS cohort, count(assignment_submissions.*) AS total_submission
FROM assignment_submissions
JOIN students on students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohort
ORDER BY total_submission DESC;