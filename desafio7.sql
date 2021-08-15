SELECT
  UPPER(CONCAT(EMP.FIRST_NAME, ' ', EMP.LAST_NAME)) AS 'Nome completo',
  JOBHIS.START_DATE AS 'Data de início',
  EMP.SALARY AS 'Salário'
FROM hr.employees AS EMP
INNER JOIN hr.job_history AS JOBHIS ON JOBHIS.EMPLOYEE_ID = EMP.EMPLOYEE_ID
WHERE MONTH (JOBHIS.START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
