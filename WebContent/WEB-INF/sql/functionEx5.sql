SELECT * FROM employee;
SELECT ename, salary, commission, salary + commission AS sum FROM employee;

SELECT ename, commission, NVL(commission, 0) FROM employee;

SELECT ename, salary, commission, NVL(commission, 0), salary*12 + NVL(commission,0) FROM employee ORDER BY job;

SELECT ename, commission, NVL2(commission, commission, 0) FROM employee;
-- NVL2(a, b, c) : a의 값이 null이면 c의값을, null이 아니면 b의 값을 출력

SELECT ename, salary, commission, NVL2(commission, salary*12+commission, salary*12) FROM employee ORDER BY job;

SELECT nullif('a', 'a') FROM dual;

SELECT nullif('a', 'b') FROM dual;
--nullif(a, b) : a와 b가 같으면 null, 다르면 a출력

SELECT COALESCE('a', 'b', null, 'c') FROM dual;
SELECT COALESCE(null, 'b', null, 'c') FROM dual;
-- COALESCE(a, b, c, d) : 해당 원소들 중 null이 아닌 첫번째 원소를 출력


SELECT ename, dno, DECODE(dno, 10, 'ACC', 20, 'RES', 'DEF') FROM employee;

SELECT ename, salary, CASE WHEN salary >= 3000 THEN 'HIGH'
                            WHEN salary>=0 THEN 'LOW'
                            ELSE '0'
                            END AS case
                            FROM employee;
-- CASE WHEN ELSE END : 조건문처럼 사용 가능


SELECT ename, salary*12+NVL(commission, 0) FROM employee;
