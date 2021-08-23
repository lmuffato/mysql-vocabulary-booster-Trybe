SELECT * FROM hr.jobs;
SELECT * FROM hr.employees;
SELECT * FROM hr.job_history;
SELECT CONCAT(employees.FIRST_NAME,' ', employees.LAST_NAME) AS 'Nome completo',
DATE_FORMAT(jobHist.START_DATE, '%d/%m/%Y') AS 'Data de início', DATE_FORMAT(jobHist.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
ROUND(DATEDIFF(jobHist.END_DATE, jobHist.START_DATE)/365, 2) AS 'Anos trabalhados'
FROM hr.employees employees
INNER JOIN hr.job_history jobHist
ON jobHist.EMPLOYEE_ID = employees.EMPLOYEE_ID
ORDER BY 'Nome completo', 'Anos Trabalhados';
