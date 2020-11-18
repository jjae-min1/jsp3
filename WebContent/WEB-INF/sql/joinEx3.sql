SELECT * FROM employee e, department d;

SELECT * FROM employee e1, employee e2;

SELECT * FROM employee WHERE eno = 7369;
SELECT * FROM employee WHERE eno = 7902;

SELECT * FROM employee e, department d 
WHERE e.dno = d.dno;

SELECT e1.eno, e1.ename, e1.manager, e2.eno FROM employee e1, employee e2 
WHERE e1.manager = e2.eno;

SELECT * FROM employee e1, employee e2 
WHERE e1.manager = e2.eno;

SELECT * FROM employee;



SELECT employees.ename as "사원이름", manager.ename as "직속상관이름"
FROM employee employees, employee manager 
WHERE employees.manager=manager.eno;

SELECT employees.ename ||'의 직속상관은' || manager.ename 
FROM employee employees JOIN employee MANAGER on employees.manager=manager.eno;



SELECT e2.ename FROM employee e1 employee e2 
			WHERE e1.eno = 7839 AND e1.eno = e2.manager;

