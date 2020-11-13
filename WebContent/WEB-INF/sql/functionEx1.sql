SELECT * FROM dual;
-- dual : 단순한 결과를 얻기 위해 사용하는 행과 열이 1개인 테이블

SELECT LOWER(ename) FROM employee;
-- LOWER : 테이블의 원소들을 소문자로 변경하여 출력

SELECT UPPER(ename) FROM employee;

SELECT INITCAP(ename) FROM employee;
--INITCAP : 원소의 첫글자를 대물자로 변환하고 나머지는 소문자로 출력



SELECT ename, LENGTH(ename) length FROM employee;
-- length : 해당 칼럼원소의 길이를 출력

SELECT LENGTH('웹프로그래밍') FROM dual;

SELECT ename, LENGTHB(ename) len FROM employee;

SELECT LENGTHB('웹프로그래밍') FROM dual;
--LENGTHB : 해당 칼럼원소의 길이를 byte기준으로 출력(한글 한글자당 3byte)

SELECT CONCAT(ename, job) FROM employee;
--CONCAT : 파라미터로 입력한 칼럼들의 원소들을 합쳐주는 역할

SELECT ename || job FROM employee;
SELECT ename || ', ' || job FROM employee;
-- || : CONCAT과 같은 역할을 함

SELECT ename, SUBSTR(ename, 1, 2) FROM employee;
SELECT ename, SUBSTR(ename, -2, 2) FROM employee;
--SUBSTR : 첫번째 인덱스부터 지정 인덱스까지 컬럼원소를 출력

SELECT * FROM employee WHERE eno = 7788 OR eno = 7876;
SELECT * FROM employee WHERE substr(hiredate, 1, 2) = '87';
SELECT * FROM employee
WHERE SUBSTR(TO_CHAR(hiredate 'YYYY-MM-DD'), 1, 4) = '1987';

SELECT ename, INSTR(ename, 'AL') FROM employee;
--INSTR : 칼럼원소별  AL이  몇번 째 인덱스에 존재하는지 출력

SELECT INSTR('Tiger Tea Tire Ton', 'T', 2, 2) FROM dual; 
-- 2번째 인덱스 이후로 시작점에서 부터 몇번째 인덱스에 T가 존재하는지 출력

SELECT INSTRB('오라클매니아', '클') FROM dual;

SELECT ename, LPAD(ename, 10, '#') FROM employee;
-- 컬럼을 10칸으로 정하고 오른쪽부터 채우며 비어있는 왼쪽공간은 #으로 채워 출력

SELECT ename, RPAD(ename, 10, '@') FROM employee;

SELECT TRIM('   ABC   ') FROM dual;
SELECT RTRIM('A   ABC   ') FROM dual;
SELECT LTRIM('   ABC   A') FROM dual;
SELECT RTRIM('   ABC   A') FROM dual;
--TRIM : 공백을 사라지게 한 후 출력

SELECT 'Oracle Maina', TRIM('O'FROM'Oracle Mania') FROM dual;
-- 컬럼원소의 첫글자나 마지막글자가 O면 잘라내고 출력(대소문자 구분)



