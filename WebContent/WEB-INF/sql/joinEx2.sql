SELECT * FROM employee;
SELECT * FROM salgrade;

SELECT * FROM employee e , salgrade s;

--Non equi join
SELECT * FROM employee e, salgrade s WHERE e.salary BETWEEN s.losal AND s.hisal;

SELECT e.ename, d.dname, e.salary, s.grade FROM employee e, department d, salgrade s
WHERE e.dno = d.dno AND salary BETWEEN losal AND hisal;
--WHERE���� ������ �޾��ָ鼭 �ش����̺��� �ش��ϴ� �ุ ���(department ���� 1�� + salgrade ���� 1��)








