SELECT * FROM employee;

SELECT * FROM employee WHERE ename = 'SMITH';
SELECT * FROM employee WHERE SALARY > 1000;
SELECT * FROM employee WHERE commission < 500;
-- where �����ڸ� �߰��Ͽ� ���ϴ� ���� ������ �Է��� ���(���� ����� ' ' �ȿ� �־ ����)


SELECT * FROM employee WHERE ename <= 'G'; --G���� �� ������ ���ĺ����� �����ϴ� �̸��鸸 ���



SELECT * FROM employee WHERE ename != 'SMITH';
SELECT * FROM employee WHERE ename <> 'SMITH'; -- (<> or ^=) : ���� �ʴ�
SELECT * FROM employee WHERE ename ^= 'SMITH';


SELECT * FROM employee WHERE hiredate = '1981/02/20';
-- ��¥ �Է½ÿ��� '  ' �ȿ� �Է�




--å ���� 44~47p

SELECT * FROM employee WHERE salary >= 1500;

SELECT * FROM employee WHERE dno = 10;

SELECT * FROM employee WHERE ename = 'SCOTT';

SELECT * FROM employee WHERE hiredate<='1981/01/01';

--------------------------------------------------------






SELECT * FROM employee 
WHERE hiredate >= '1981/01/01' AND salary > 3000;

SELECT * FROM employee
WHERE hiredate >= '1981/01/01' OR salary > 3000;
--where������ �ȿ� ������ ������ ���� �� AND �Ǵ� OR �� �־���


SELECT * FROM employee
WHERE NOT salary > 3000;
--NOT �����ڵ� ��� ���� (�������� ������ ���� �� NOT �ٷεڿ� ����� ���ǿ��� ����)



SELECT * FROM employee
WHERE ename > 'G' AND salary < 1000 AND dno = 30;



-- 48~51P ����

SELECT * FROM  employee
WHERE dno = 10 AND job = 'MANAGER';

SELECT * FROM employee
WHERE dno = 10 OR job = 'MANAGER';

SELECT * FROm employee
WHERE NOT dno = 10;

SELECT * FROM employee
WHERE dno <> 10;

SELECT * FROM employee
WHERE salary >= 1000 and salary <= 1500;

SELECT * FROM employee
WHERE salary < 1000 OR salary > 1500;

SELECT * FROM employee
WHERE commission = 300 or commission = 500 or commission = 1400;




SELECT * FROM employee
WHERE salary >= 3000 AND salary <= 5000;

SELECT * FROM employee
WHERE salary BETWEEN 3000 AND 5000;
-- BETWEEN A and B : A�� B���� �����ϸ� �ΰ� ������ ���� ���� ����� ���

SELECT * FROM employee
WHERE hiredate BETWEEN '1982/01/01' AND '1982/12/31';


SELECT * FROM employee
WHERE salary < 3000 OR salary > 5000;

SELECT * FROM employee
WHERE salary NOT BETWEEN 3000 AND 5000;




SELECT * FROM employee
WHERE dno = 10 OR dno = 20;

SELECT * FROM employee
WHERE dno IN(10, 20);
-- IN :  10�� 20�� �ϳ��� ���� �����ϴ� ��츦 ���(������ ��� or�� ����, ������ ��� AND�� ����)

SELECT * FROM employee
WHERE dno NOT IN(10);







--51~54p
SELECT * FROM employee
WHERE salary between 1000 and 1500;

SELECT * FROM employee
WHERE salary >=1000 AND salary <=1500;

SELECT * FROM employee
WHERE salary not between 1000 and 1500;

SELECT * FROM employee
WHERE salary <1000 or salary >1500;

SELECT * FROM employee
WHERE hiredate between '1982/01/01' AND '1982/12/31';

SELECT * FROM employee
WHERE commission in(300, 500, 1400);

SELECT * FROM employee
WHERE commission = 300 or commission = 500 OR commission = 1400;

SELECT * FROM employee
WHERE commission <> 300 AND commission <> 500 AND commission <> 1400;

SELECT * FROM employee
WHERE commission NOT IN(300, 500, 1400);





-- 65p ex) 1, 4, 5, 6, 14, 15

-- 1.
SELECT ename, salary, salary+300 FROM employee;



--4.
SELECT ename, dno FROM employee
WHERE eno=7788;


--5.
SELECT ename, salary FROm employee
WHERE salary NOT BETWEEN 2000 AND 3000;


--6.
SELECT ename, job, hiredate FROM employee
WHERE hiredate BETWEEN '1981/02/20' AND '1981/05/01';


--14.
SELECT ename, job, salary FROM employee
WHERE job IN('CLERK', 'SALESMAN') AND salary NOT IN(1600, 950, 1300);


--15.
SELECT ename, salary, commission FROM employee
WHERE commission >= 500; 


SELECT * FROM DEPARTMENT;
select * from employee;


