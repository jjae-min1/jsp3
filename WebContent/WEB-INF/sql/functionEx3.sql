SELECT sysdate FROM dual;
--sysdate : 현재 날짜

SELECT sysdate + 1 FROM dual;
SELECT sysdate - 1 FROM dual;

SELECT ename, hiredate, ROUND(sysdate - hiredate) FROM employee;

SELECT ROUND(sysdate, 'YEAR') FROM dual;
SELECT ROUND(sysdate, 'MONTH') FROM dual;
--선언한 기준 아래쪾을 반올림


SELECT TRUNC(sysdate, 'YEAR') FROM dual;
SELECT TRUNC(sysdate, 'MONTH') FROM dual;
-- 선언한 기준 아래쪽을 버림


SELECT MONTHS_BETWEEN(SYSDATE,hiredate) FROM employee;
SELECT MONTHS_BETWEEN(SYSDATE, TO_DATE('2020-10-13', 'yyyy-mm-dd')) FROM dual;
SELECT MONTHS_BETWEEN(TO_DATE('2019-10-13', 'yyyy-mm-dd'), SYSDATE) FROM dual;
--MONTHS_BETWEEN : 앞날과 뒷날의 차이를 달 단위로 나타냄 ( 앞날이 먼저면 음수값 출력)



SELECT ADD_MONTHS(sysdate, 12) FROM dual;
SELECT ADD_MONTHS(sysdate, 6) FROM dual;
--ADD_MONTHS(a, b) : a를 기준으로 b달 후의 결과를 출력


SELECT NEXT_DAY(sysdate, '화요일') FROM dual;
SELECT NEXT_DAY(sysdate, '금요일') FROM dual;
SELECT NEXT_DAY(sysdate,  6) FROM dual;
--NEXT_DAY(a, b) : a를 기준으로 b일 후의 날짜 출력


SELECT LAST_DAY(sysdate) FROM dual;
SELECT LAST_DAY(ADD_MONTHS(sysdate, -9)) FROM dual;
--LAST_DAY : 선언한 달의 마지막 날을 출력(ex : 2월 11일 = 2월 28일)



SELECT TO_CHAR(sysdate) FROM dual;
SELECT TO_CHAR(sysdate, 'YYYY') FROM dual;
SELECT TO_CHAR(sysdate, 'YY') FROM dual;
SELECT TO_CHAR(sysdate, 'MM') FROM dual;
SELECT TO_CHAR(sysdate, 'DD') FROM dual;
SELECT TO_CHAR(sysdate, 'MON') FROM dual;
-- 한국어패치
SELECT TO_CHAR(sysdate, 'YYYY-MM-DD') FROM dual;
-- 날짜를 문자로 표시


SELECT TO_CHAR(sysdate, 'HH') FROM dual;
SELECT TO_CHAR(sysdate, 'HH24') FROM dual;
SELECT TO_CHAR(sysdate, 'MI') FROM dual;
SELECT TO_CHAR(sysdate, 'SS') FROM dual;
SELECT TO_CHAR(sysdate, 'HH:MI:SS') FROM dual;
--시분초 까지 표현 가능




SELECT TO_CHAR(56789) FROM dual;
SELECT TO_CHAR(9956789, '999,999,999') FROM dual;
-- 선언한 자리수에 맞춰서 출력
SELECT TO_CHAR(9956789, '000,000,000') FROM dual;
-- 선언한 자리수에 맞춰 출력하며 남는 부분은 0으로 채움
SELECT TO_CHAR(9956789, 'L999,999,999') FROM dual;
SELECT TO_CHAR(9956789, 'L999,999,999,999') FROM dual;


SELECT TO_DATE('2020-11-13', 'YYYY-MM-DD') FROM dual;
SELECT TO_DATE('20201113', 'YYYYMMDD') FROM dual;
SELECT TO_DATE('2020/11/13', 'YYYY-MM-DD') FROM dual;
SELECT TO_DATE('2020-11-13 01:30:20', 'YYYY-MM-DD HH:MI:SS', 'YYYY-MM-DD HH:MI:SS')FROM dual;


SELECT TO_NUMBER('200000') FROM dual;
SELECT TO_NUMBER('200,000', '999,999') FROM dual;