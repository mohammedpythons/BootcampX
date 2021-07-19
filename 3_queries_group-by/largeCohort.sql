SELECT cohorts.name as cohort_name, count(students.*) AS student_count
FROM cohorts
JOIN students on cohort_id = cohorts.id
GROUP BY cohort_name
HAVING count(students.*) >= 18
ORDER BY student_count;

