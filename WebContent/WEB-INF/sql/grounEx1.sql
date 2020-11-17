SELECT commission, nvl(commission, 0) from employee;

SELECT SUM(salary) FROM employee;
--해당 칼럼들의 합을 출력

SELECT AVG(salary) FROM employee;
SELECT MIN(salary) FROM employee;
SELECT MAX(salary) FROM employee;

SELECT COUNT(salary) FROM employee;
--해당 칼럼의 null이 아닌 행의 개수


SELECT sum(salary) as "급여총액",
avg(salary) as "급여평균",
max(salary) as "최대급여",
min(salary) as "최소급여"
from employee;


SELECT max(hiredate), min(hiredate) from employee;

SELECT SUM(commission) as "커미션 총액" from employee;



SELECT COUNT(commission) FROM employee;
SELECT AVG(commission) FROM employee;
SELECT SUM(commission) FROM employee;
SELECT MAX(commission) FROM employee;
-- 그룹함수는 null을 제외하고 처리

SELECT count(*) as "사원의 수" FROM employee;

SELECT count(commission) as "커미션 받는 사원 수" FROM employee;

SELECT count(*) as "커미션 받는 사원 수" FROM employee WHERE commission IS NOT NULL;

SELECT count(distinct job) as "직업 종류의 개수" FROM employee;

SELECT ename, max(salary) FROM employee;
-- ename 칼럼의 행의개수 = 14, 그룹함수의 결과 = 1  -> 매칭이 불가능하여 오류발생




