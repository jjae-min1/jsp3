SELECT * FROM employee ;
SELECT * FROM bonus;
select * from department;
select * from salgrade;

select ename from employee;
select eno, ename from employee;
select ename, eno from employee;
select ename, salary from employee;
SELECT ename, salary, salary*12 from employee;
SELECT ename, salary / 100 FROM employee;
SELECT ename, salary, salary*12 AS ���� FROM employee;
SELECT ename, salary, salary*12 ���� FROM employee; 


/* select [����ϰ����ϴ� �÷���] form ����ϰ����ϴ� ���̺� */
-- �÷��� ��Ģ���� ���� �����ϰ� ��µǴ� �÷����� [AS] �� ������ �� ����


SELECT * FROM employee;
SELECT ename, salary, commission, salary + commission FROM employee;
-- null����, null�� �ƴѰ��� ���ϸ� null�� ���



SELECT ename, salary, commission, NVL(commission, 0) FROM employee;
-- NVL(nullvalue) : �ش� �÷��� 0�Ͻ� �� �Ķ���� ������ ��ü��


SELECT ename, salary, commission, NVL(commission + salary, salary) �� FROM employee;












-- å���� 32~37p

SELECT * FROM employee;

SELECT eno, ename FROM employee;

SELECT ename, salary, salary*12 FROM employee;

SELECT ename, salary, job, dno, commission, salary/12, salary*12+commission FROM employee;

SELECT ename, salary, job, dno, nvl(commission, 0), salary*12+nvl(commission, 0) FROM employee;

SELECT ename, salary*12+nul(commission, 0) ���� FROM employee;

SELECT ename, salary*12+nvl(commission, 0) as ���� FROM employee;

SELECT ename, salary*12+nvl(commission, 0) "�� ��" FROM employee;



SELECT distinct(dno) FROM employee;
SELECT distinct dno FROM employee;
--distinct : �ߺ��� ����














