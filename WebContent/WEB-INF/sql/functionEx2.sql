SELECT ROUND(345.1456) FROM dual;
SELECT ROUND(345.1456, 0) FROM dual;
SELECT ROUND(345.1456, -1) FROM dual;
SELECT ROUND(345.1456, -2) FROM dual;
SELECT ROUND(345.1456, 1) FROM dual;

--round : 반올림 해서 정수 출력, 뒷쪽 파라미터는 반올림하는 자릿수를 나타냄

SELECT TRUNC(345.1456) FROM dual;
SELECT TRUNC(345.1456, 1) FROM dual;
SELECT TRUNC(345.1456, -1) FROM dual;
-- TRUNC : 버림 함수

SELECT MOD(135, 3) FROM dual;
SELECT MOD(135, 2) FROM dual;
SELECT MOD(135, 1) FROM dual;
--MOD(a, b) : b % a 값 출력





