SELECT * FROM employee;
-- 14��, 8��
SELECT * FROM department;
-- 4����, 3��


SELECT * FROM employee, department;
--14*4�� 11�� ( employee�� �ϳ��� department�࿡ ���� 4���� ����Ǿ� ���)

SELECT eno, ename, dname FROM employee, department;


SELECT eno, ename, employee.dno edno, department.dno ddno
FROM employee, department;
--�ߺ��Ǵ� ���� ���� ��� ���̺�.���̸� ���� ǥ���ؾ� ��


SELECT eno, ename, employee.dno edno, department.dno ddno
FROM employee, department WHERE eno = 7369 AND employee.dno = department.dno;
--�ΰ��� ���̺��� ���� ���ϴ� ������ ��½� WHERE���� ������ ������ �߰��ؾ� ��


SELECT * FROM employee, department WHERE employee.dno = department.dno;


SELECT eno, ename, dname FROM employee, department WHERE employee.dno = department.dno AND eno = 7788;


SELECT eno, ename, dname, dno FROM employee, department WHERE employee.dno = department.dno AND eno = 7788;
-- dnoĮ���� �������̺� ��� �����ϹǷ� ���� �߻�(SELECT���� �ߺ��� Į�� ����� �տ� ���̺���� �Է������ ��)


SELECT employee.eno, employee.ename, department.dname, employee.dno FROM employee, department WHERE employee.dno = department.dno AND employee.eno=7788;

SELECT eno, ename, dname, employee.dno FROM employee, department WHERE employee.dno = department.dno AND eno=7788;
--Į���� �Ҽ��� ��Ȯ�ϸ� ���̺�� ��� �����൵ ��



--equi join
SELECT * FROM employee, department WHERE employee.dno = department.dno;

SELECT * FROM employee e, department d WHERE e.dno = d.dno AND e.eno=7369;
--���̺� ��Ī ���


SELECT e.eno, e.ename, e.dno, d.dname FROM employee e, department d WHERE e.dno = d.dno;



SELECT ename, department.dno, dname FROM employee, department WHERE department.dno = employee.dno AND ename = 'SCOTT';

SELECT ename, dname FROM employee, department WHERE department.dno = employee.dno AND ename LIKE '%A%';


-- join

SELECT * FROM employee NATURAL JOIN department;
--natural join : ���̺� ���� �÷���(Ÿ�Ա���) ���� �� �÷��� �м��Ͽ� ������ ��鸸 ���(equi join�� ����, �ߺ��� Į�� �����)
SELECT * FROM employee NATURAL JOIN department WHERE eno = 7782;


--join using(USING ������ �÷��� ����Ͽ� �� ���̺��� join, Ÿ���� �޶� ��)
SELECT * FROM employee JOIN department USING(dno);
SELECT * FROM employee JOIN department USING(dno) WHERE eno = 7788;


--join on(������ �����̳� ������ �÷��� ����)
SELECT * FROM employee e JOIN department d ON e.dno = d.dno;
SELECT * FROM employee e JOIN department d ON e.dno = d.dno WHERE eno = 7788;












