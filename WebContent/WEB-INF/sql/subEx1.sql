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
-- subQuery�� ������� �׻� 1������ ��



--���� �� ��������(������� �������� �� ����)
/*
in ���� �ϳ��� ������ 

ANY(SOME) �ϳ� �̻��� �����ϸ�

ALL ��θ����ϸ�
*/

SELECT dno FROM department WHERE dno <= 20;

SELECT ename FROM employee
WHERE dno IN (SELECT dno FROM department WHERE dno <= 20);

SELECT eno, ename FROM employee 
WHERE salary in(SELECT MIN(salary) FROM employee GROUP BY dno);

SELECT eno, ename FROM employee
WHERE(dno, salary) IN (SELECT dno, MIN(salary) FROM employee GROUP BY dno);








