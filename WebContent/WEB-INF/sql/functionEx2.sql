SELECT ROUND(345.1456) FROM dual;
SELECT ROUND(345.1456, 0) FROM dual;
SELECT ROUND(345.1456, -1) FROM dual;
SELECT ROUND(345.1456, -2) FROM dual;
SELECT ROUND(345.1456, 1) FROM dual;

--round : �ݿø� �ؼ� ���� ���, ���� �Ķ���ʹ� �ݿø��ϴ� �ڸ����� ��Ÿ��

SELECT TRUNC(345.1456) FROM dual;
SELECT TRUNC(345.1456, 1) FROM dual;
SELECT TRUNC(345.1456, -1) FROM dual;
-- TRUNC : ���� �Լ�

SELECT MOD(135, 3) FROM dual;
SELECT MOD(135, 2) FROM dual;
SELECT MOD(135, 1) FROM dual;
--MOD(a, b) : b % a �� ���





