SELECT manager FROM employee
WHERE eno = 7499;

SELECT ename FROM employee
WHERE eno = 7698;

SELECT ename FROM employee
WHERE eno = (SELECT manager FROM employee
             WHERE eno = 7499);
             
             
SELECt ename, dno FROM employee
WHERE dno = (SELECT dno FROM employee
             WHERE ename='SCOTT');
             
             
SELECT ename, job, salary FROM employee
WHERE salary = (SELECT MIN(salary) FROM employee);


SELECT dno, MIN(salary) FROM employee
GROUP BY dno HAVING MIN(salary) > (SELECT MIN(salary) FROM employee WHERE dno = 30);


SELECT ename FROM employee 
WHERE salary = (SELECT salary FROM employee WHERE eno = 7499);
-- subQuery의 결과값은 항상 1개여야 함



--다중 행 서브쿼리(결과행이 여러개일 수 있음)
/*
in 값이 하나라도 있으면 

ANY(SOME) 하나 이상이 만족하면

ALL 모두만족하면
*/

SELECT dno FROM department WHERE dno <= 20;

SELECT ename FROM employee
WHERE dno IN (SELECT dno FROM department WHERE dno <= 20);

SELECT eno, ename FROM employee 
WHERE salary in(SELECT MIN(salary) FROM employee GROUP BY dno);

SELECT eno, ename FROM employee
WHERE(dno, salary) IN (SELECT dno, MIN(salary) FROM employee GROUP BY dno);








