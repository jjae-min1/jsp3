SELECT * FROM employee;
SELECT * FROM salgrade;

SELECT * FROM employee e , salgrade s;

--Non equi join
SELECT * FROM employee e, salgrade s WHERE e.salary BETWEEN s.losal AND s.hisal;

SELECT e.ename, d.dname, e.salary, s.grade FROM employee e, department d, salgrade s
WHERE e.dno = d.dno AND salary BETWEEN losal AND hisal;
--WHERE절에 조건을 달아주면서 해당테이블의 해당하는 행만 출력(department 조건 1개 + salgrade 조건 1개)








