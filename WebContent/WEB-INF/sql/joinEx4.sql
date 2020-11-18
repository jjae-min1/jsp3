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


SELECT e1.ename, e1.manager, e2.eno, e2.ename FROM employee e1 LEFT OUTER JOIN employee e2
on e1.manager = e2.eno ORDER BY e1.eno DESC;

SELECT e1.ename, e1.dno, e2.ename FROM employee e1, employee e2
WHERE e1.eno = 7788 AND e1.dno = e2.dno AND e2.eno <> 7788;

SELECT e2.ename, e2.hiredate FROM employee e1, employee e2
WHERE e2.hiredate > e1.hiredate AND e1.ename = 'WARD';


SELECT e1.ename as "부하이름", e1.hiredate as "부하입사일", e2.ename as "매니저 이름", e2.hiredate as "매니저 입사일"
FROM employee e1, employee e2 
WHERE e1.manager = e2.eno AND e1.hiredate <= e2.hiredate;



