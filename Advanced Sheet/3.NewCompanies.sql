SELECT C.COMPANY_CODE, C.FOUNDER,
COUNT(DISTINCT LM.LEAD_MANAGER_CODE),
COUNT(DISTINCT SM.SENIOR_MANAGER_CODE),
COUNT(DISTINCT M.MANAGER_CODE),
COUNT(DISTINCT E.EMPLOYEE_CODE)
FROM COMPANY C, LEAD_MANAGER LM, SENIOR_MANAGER SM, MANAGER M, EMPLOYEE E
WHERE
C.COMPANY_CODE = LM.COMPANY_CODE AND
LM.LEAD_MANAGER_CODE = SM.LEAD_MANAGER_CODE AND
SM.SENIOR_MANAGER_CODE = M.SENIOR_MANAGER_CODE AND
M.MANAGER_CODE = E.MANAGER_CODE 
GROUP BY C.COMPANY_CODE, C.FOUNDER
ORDER BY C.COMPANY_CODE ASC;
