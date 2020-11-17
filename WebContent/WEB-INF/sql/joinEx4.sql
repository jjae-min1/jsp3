SELECT e1.eno, e1.manager, e2.eno
FROM employee e1, employee e2
WHERE e1.manager = e2.eno;
--where 절 내에서 좌변이나 우변 둘중하나가 null값이면 출력테이블에서 제외

--null을 표현하지 않으면 inner조인 , null값을 표시하면 outer조인 ( 보통 inner조인)

SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 LEFT OUTER JOIN employee e2 ON e1.manager = e2.eno;

SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1, employee e2 where e1.manager = e2.eno(+);


SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 RIGHT OUTER JOIN employee e2 ON e1.manager = e2.eno;

SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1, employee e2 where e1.manager(+) = e2.eno;



SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 FULL OUTER JOIN employee e2 ON e1.manager = e2.eno;

--outer조인 예(LEFT or RIGHT 는 on 뒷쪽에 선언된 왼쪽 or 오른쪽 테이블에서의 null값을 출력하겠다는 의미


SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 JOIN employee e2 ON e1.manager = e2.eno;

SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1, employee e2 WHERE e1.eno = e2.manager;


SELECT e.ename, d.dname, d.loc FROM employee e INNER JOIN department d on e.dno = d.dno; 

SELECT dno, job , loc FROM employee  join department   using (dno) WHERE dno = 10;

SELECT e.ename, d.dname, d.loc FROM employee e NATURAL JOIN department d WHERE commission>0;


SELECT e.ename, e.job, dno, d.dname FROM employee e NATURAL JOIN department d WHERE d.loc = 'NEW YORK';

SELECT e1.ename, e1.eno, e2.ename, e2.eno FROM employee e1, employee e2
WHERE e1.manager = e2.eno;


SELECT e1.ename, e1.manager, e2.eno, e2.ename FROM employee e1 RIGHT OUTER JOIN employee e2
WHERE e1.manager = e2.eno ORDER BY e1.eno DESC;



