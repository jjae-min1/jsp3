SELECT commission, nvl(commission, 0) from employee;

SELECT SUM(salary) FROM employee;
--�ش� Į������ ���� ���

SELECT AVG(salary) FROM employee;
SELECT MIN(salary) FROM employee;
SELECT MAX(salary) FROM employee;

SELECT COUNT(salary) FROM employee;
--�ش� Į���� null�� �ƴ� ���� ����


SELECT sum(salary) as "�޿��Ѿ�",
avg(salary) as "�޿����",
max(salary) as "�ִ�޿�",
min(salary) as "�ּұ޿�"
from employee;


SELECT max(hiredate), min(hiredate) from employee;

SELECT SUM(commission) as "Ŀ�̼� �Ѿ�" from employee;



SELECT COUNT(commission) FROM employee;
SELECT AVG(commission) FROM employee;
SELECT SUM(commission) FROM employee;
SELECT MAX(commission) FROM employee;
-- �׷��Լ��� null�� �����ϰ� ó��

SELECT count(*) as "����� ��" FROM employee;

SELECT count(commission) as "Ŀ�̼� �޴� ��� ��" FROM employee;

SELECT count(*) as "Ŀ�̼� �޴� ��� ��" FROM employee WHERE commission IS NOT NULL;

SELECT count(distinct job) as "���� ������ ����" FROM employee;

SELECT ename, max(salary) FROM employee;
-- ename Į���� ���ǰ��� = 14, �׷��Լ��� ��� = 1  -> ��Ī�� �Ұ����Ͽ� �����߻�




