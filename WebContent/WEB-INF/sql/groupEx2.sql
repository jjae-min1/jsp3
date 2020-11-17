SELECT MAX(salary) FROM employee GROUP BY job;
--�׷��Լ��� �׷캰�� ���

SELECT dno as "�μ� ��ȣ", avg(salary) as "�޿� ���" FROM employee GROUP BY dno;

SELECT avg(salary) as "�޿� ���" FROM employee GROUP BY dno;

SELECT dno,ename, avg(salary) FROM employee GROUP BY dno;
--�׷��Լ��� �Ϲ��÷��� ���� �� �� �ִ� ���� GROUP BY���� �ش� �÷��� ��޵������� 

SELECT dno, job, count(*), sum(salary) FROM employee GROUP BY dno, job ORDER BY dno, job;

SELECT job, avg(salary) FROM employee WHERE avg(salary) >= 3000 GROUP BY job;
--where������ group�Լ� ��� x

SELECT job, avg(salary) FROM employee GROUP BY job HAVING avg(salary) >= 3000;
--�������� group�Լ��� ���� HAVING���� ���



SELECT dno, max(salary) FROM employee GROUP BY dno HAVING MAX(salary) >= 3000;

SELECT job, count(*), SUM(salary) FROM employee WHERE job not like '%MANAGER%' GROUP BY job HAVING SUM(salary) >= 5000 ORDER BY SUM(salary);

SELECT MAX(avg(salary)) FROM employee GROUP BY dno;
--�׷��Լ��� 2������ ��ø��� ����



--ȥ���غ���

--1.
SELECT MAX(salary) as Maximum, MIN(salary) as Minimum, SUM(salary) as Sum, ROUND(AVG(salary)) as Average FROM employee;

--2.
SELECT job, MAX(salary) Maximum, MIN(salary) Minimum, SUM(salary) Sum, ROUND(AVG(salary)) Average FROM employee GROUP BY job;

--3.
SELECT job, COUNT(*) FROM employee GROUP BY job;

--4.
SELECT COUNT(MANAGER) FROM employee;

--5.
SELECT MAX(salary) - MIN(salary) DIFFERENCE FROM employee;

--6.
SELECT JOB, MIN(salary) FROM employee GROUP BY JOB HAVING MIN(salary) >= 2000 ORDER BY MIN(salary) DESC;

--7.
SELECT DNO, COUNT(*) as "Number Of People", ROUND(AVG(salary), 2) Salary FROM employee GROUP BY dno ORDER BY dno;

--8.
SELECT decode(dno, 10, 'ACCOUNTING',
                   20, 'RESEARCH',
                   30, 'SALES',
                   'DEFAULT') as dname,
    decode(dno, 10, 'NEWYORK',
                20, 'DALLAS',
                30, 'CHICAGO',
                'DEFAULT') as Location,
                COUNT(*) as "Number of People",
                round(avg(salary)) as "Salary" FROM employee GROUP BY dno;
                
 
SELECT ename FROM employe WHERE dno = 10 AND 
			ename LIKE "%A%";