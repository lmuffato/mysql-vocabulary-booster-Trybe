-- 4 - Exiba a média salarial e o nível de senioridade de todas as pessoas empregadas, agrupadas pelo cargo
SELECT 
  j.JOB_TITLE AS Cargo,
  ROUND(AVG(e.SALARY), 2) AS `Média salarial`,
  CASE
    WHEN
      ROUND(AVG(e.SALARY), 2) BETWEEN 2000 AND 5800 
    THEN 
      'Júnior'
    WHEN 
      ROUND(AVG(e.SALARY), 2) BETWEEN 5801 AND 7500 
    THEN
      'Pleno'
    WHEN 
      ROUND(AVG(e.SALARY), 2) BETWEEN 7501 AND 10500 
    THEN 
      'Sênior'
    WHEN
      ROUND(AVG(e.SALARY), 2) > 10500
    THEN
      'CEO'
  ELSE
    ROUND(AVG(e.SALARY), 2)
  END AS Senioridade
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON e.JOB_ID = j.JOB_ID
GROUP BY 
  e.JOB_ID
ORDER BY
  `Média salarial` ASC, Cargo ASC;
