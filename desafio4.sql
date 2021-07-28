SELECT job.JOB_TITLE AS Cargo, ROUND(AVG(empl.SALARY), 2) AS `Média salarial`, CASE WHEN ROUND(AVG(empl.SALARY), 2) >= 2000 AND ROUND(AVG(empl.SALARY), 2) <= 5800 THEN 'Júnior' WHEN ROUND(AVG(empl.SALARY), 2) >= 5801 AND ROUND(AVG(empl.SALARY), 2) <= 7500 THEN 'Pleno' WHEN ROUND(AVG(empl.SALARY), 2) >= 7501 AND ROUND(AVG(empl.SALARY), 2) <= 10500 THEN 'Sênior' ELSE 'CEO' END AS Senioridade FROM hr.jobs AS job INNER JOIN hr.employees AS empl ON empl.JOB_ID = job.JOB_ID GROUP BY empl.JOB_ID ORDER BY `Média salarial`, Cargo;