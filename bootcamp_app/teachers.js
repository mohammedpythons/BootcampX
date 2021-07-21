const { Pool } = require('pg');

const pool = new Pool({
	user: 'mohamedali',
	password: '123',
	host: 'localhost',
	database: 'bootcampx'
});


pool.query(`
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;
`)
.then(res => {
    res.rows.forEach(res => {
        console.log(`${res.cohort}: ${res.teacher}`);
    });
})
.catch(err => {
    console.log(err)
});