select department_name, first_name, last_name
from employees right outer join departments
     on (employees.department_id = departments.department_id)
order by department_name;

select department_id, count(employee_id) AS anzahl
 FROM employees
 GROUP BY department_id;


select ( SELECT department_name
          FROM departments d
          WHERE d.department_id = e.department_id
       ) AS department_name ,
       count(employee_id) AS anzahl
 FROM employees e
 GROUP BY department_id;



REM Anzahl pro Abteilung

SELECT count(department_id)
  FROM employees
  GROUP BY department_id;


REM zahlenmäßig größte Abteilung

SELECT max(count(department_id))
  FROM employees
  GROUP BY department_id;


SELECT department_id, count(department_id)
  FROM employees
  GROUP BY department_id
  HAVING count(department_id) = ( SELECT max(count(department_id))
                                  FROM employees
                                  GROUP BY department_id)
;




