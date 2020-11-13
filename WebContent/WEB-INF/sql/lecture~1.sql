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
SELECT ename, salary, salary*12 AS 연봉 FROM employee;
SELECT ename, salary, salary*12 연봉 FROM employee; 


/* select [출력하고자하는 컬럼명] form 출력하고자하는 테이블 */
-- 컬럼에 사칙연산 적용 가능하고 출력되는 컬럼명을 [AS] 로 설정할 수 있음


SELECT * FROM employee;
SELECT ename, salary, commission, salary + commission FROM employee;
-- null값과, null이 아닌값을 합하면 null이 출력



SELECT ename, salary, commission, NVL(commission, 0) FROM employee;
-- NVL(nullvalue) : 해당 컬럼이 0일시 뒷 파라미터 값으로 대체함


SELECT ename, salary, commission, NVL(commission + salary, salary) 합 FROM employee;












-- 책예제 32~37p

SELECT * FROM employee;

SELECT eno, ename FROM employee;

SELECT ename, salary, salary*12 FROM employee;

SELECT ename, salary, job, dno, commission, salary/12, salary*12+commission FROM employee;

SELECT ename, salary, job, dno, nvl(commission, 0), salary*12+nvl(commission, 0) FROM employee;

SELECT ename, salary*12+nul(commission, 0) 연봉 FROM employee;

SELECT ename, salary*12+nvl(commission, 0) as 연봉 FROM employee;

SELECT ename, salary*12+nvl(commission, 0) "연 봉" FROM employee;



SELECT distinct(dno) FROM employee;
SELECT distinct dno FROM employee;
--distinct : 중복값 제거














