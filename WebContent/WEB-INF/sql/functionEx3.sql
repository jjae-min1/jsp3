SELECT sysdate FROM dual;
--sysdate : ���� ��¥

SELECT sysdate + 1 FROM dual;
SELECT sysdate - 1 FROM dual;

SELECT ename, hiredate, ROUND(sysdate - hiredate) FROM employee;

SELECT ROUND(sysdate, 'YEAR') FROM dual;
SELECT ROUND(sysdate, 'MONTH') FROM dual;
--������ ���� �Ʒ��U�� �ݿø�


SELECT TRUNC(sysdate, 'YEAR') FROM dual;
SELECT TRUNC(sysdate, 'MONTH') FROM dual;
-- ������ ���� �Ʒ����� ����


SELECT MONTHS_BETWEEN(SYSDATE,hiredate) FROM employee;
SELECT MONTHS_BETWEEN(SYSDATE, TO_DATE('2020-10-13', 'yyyy-mm-dd')) FROM dual;
SELECT MONTHS_BETWEEN(TO_DATE('2019-10-13', 'yyyy-mm-dd'), SYSDATE) FROM dual;
--MONTHS_BETWEEN : �ճ��� �޳��� ���̸� �� ������ ��Ÿ�� ( �ճ��� ������ ������ ���)



SELECT ADD_MONTHS(sysdate, 12) FROM dual;
SELECT ADD_MONTHS(sysdate, 6) FROM dual;
--ADD_MONTHS(a, b) : a�� �������� b�� ���� ����� ���


SELECT NEXT_DAY(sysdate, 'ȭ����') FROM dual;
SELECT NEXT_DAY(sysdate, '�ݿ���') FROM dual;
SELECT NEXT_DAY(sysdate,  6) FROM dual;
--NEXT_DAY(a, b) : a�� �������� b�� ���� ��¥ ���


SELECT LAST_DAY(sysdate) FROM dual;
SELECT LAST_DAY(ADD_MONTHS(sysdate, -9)) FROM dual;
--LAST_DAY : ������ ���� ������ ���� ���(ex : 2�� 11�� = 2�� 28��)



SELECT TO_CHAR(sysdate) FROM dual;
SELECT TO_CHAR(sysdate, 'YYYY') FROM dual;
SELECT TO_CHAR(sysdate, 'YY') FROM dual;
SELECT TO_CHAR(sysdate, 'MM') FROM dual;
SELECT TO_CHAR(sysdate, 'DD') FROM dual;
SELECT TO_CHAR(sysdate, 'MON') FROM dual;
-- �ѱ�����ġ
SELECT TO_CHAR(sysdate, 'YYYY-MM-DD') FROM dual;
-- ��¥�� ���ڷ� ǥ��


SELECT TO_CHAR(sysdate, 'HH') FROM dual;
SELECT TO_CHAR(sysdate, 'HH24') FROM dual;
SELECT TO_CHAR(sysdate, 'MI') FROM dual;
SELECT TO_CHAR(sysdate, 'SS') FROM dual;
SELECT TO_CHAR(sysdate, 'HH:MI:SS') FROM dual;
--�ú��� ���� ǥ�� ����




SELECT TO_CHAR(56789) FROM dual;
SELECT TO_CHAR(9956789, '999,999,999') FROM dual;
-- ������ �ڸ����� ���缭 ���
SELECT TO_CHAR(9956789, '000,000,000') FROM dual;
-- ������ �ڸ����� ���� ����ϸ� ���� �κ��� 0���� ä��
SELECT TO_CHAR(9956789, 'L999,999,999') FROM dual;
SELECT TO_CHAR(9956789, 'L999,999,999,999') FROM dual;


SELECT TO_DATE('2020-11-13', 'YYYY-MM-DD') FROM dual;
SELECT TO_DATE('20201113', 'YYYYMMDD') FROM dual;
SELECT TO_DATE('2020/11/13', 'YYYY-MM-DD') FROM dual;
SELECT TO_DATE('2020-11-13 01:30:20', 'YYYY-MM-DD HH:MI:SS', 'YYYY-MM-DD HH:MI:SS')FROM dual;


SELECT TO_NUMBER('200000') FROM dual;
SELECT TO_NUMBER('200,000', '999,999') FROM dual;