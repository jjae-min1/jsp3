SELECT * FROM employee;

SELECT * FROM employee WHERE ename = 'SMITH';
SELECT * FROM employee WHERE SALARY > 1000;
SELECT * FROM employee WHERE commission < 500;
-- where 연산자를 추가하여 원하는 행의 조건을 입력후 출력(문자 선언시 ' ' 안에 넣어서 선언)


SELECT * FROM employee WHERE ename <= 'G'; --G보다 앞 순서의 알파벳으로 시작하는 이름들만 출력



SELECT * FROM employee WHERE ename != 'SMITH';
SELECT * FROM employee WHERE ename <> 'SMITH'; -- (<> or ^=) : 같지 않다
SELECT * FROM employee WHERE ename ^= 'SMITH';


SELECT * FROM employee WHERE hiredate = '1981/02/20';
-- 날짜 입력시에도 '  ' 안에 입력




--책 예제 44~47p

SELECT * FROM employee WHERE salary >= 1500;

SELECT * FROM employee WHERE dno = 10;

SELECT * FROM employee WHERE ename = 'SCOTT';

SELECT * FROM employee WHERE hiredate<='1981/01/01';

--------------------------------------------------------






SELECT * FROM employee 
WHERE hiredate >= '1981/01/01' AND salary > 3000;

SELECT * FROM employee
WHERE hiredate >= '1981/01/01' OR salary > 3000;
--where연산자 안에 조건을 여러개 넣을 시 AND 또는 OR 로 넣어줌


SELECT * FROM employee
WHERE NOT salary > 3000;
--NOT 연산자도 사용 가능 (여러개의 조건을 넣을 시 NOT 바로뒤에 선언된 조건에만 적용)



SELECT * FROM employee
WHERE ename > 'G' AND salary < 1000 AND dno = 30;



-- 48~51P 예제

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
-- BETWEEN A and B : A와 B값을 포함하며 두값 사이의 값을 갖은 행들을 출력

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
-- IN :  10과 20중 하나의 값을 만족하는 경우를 출력(긍정의 경우 or로 연결, 부정의 경우 AND로 연결)

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


