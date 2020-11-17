SELECT e1.eno, e1.manager, e2.eno
FROM employee e1, employee e2
WHERE e1.manager = e2.eno;
--where �� ������ �º��̳� �캯 �����ϳ��� null���̸� ������̺��� ����

--null�� ǥ������ ������ inner���� , null���� ǥ���ϸ� outer���� ( ���� inner����)

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

--outer���� ��(LEFT or RIGHT �� on ���ʿ� ����� ���� or ������ ���̺����� null���� ����ϰڴٴ� �ǹ�


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



