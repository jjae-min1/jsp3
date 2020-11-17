SELECT * FROM employee;
SELECT ename, salary, commission, salary + commission AS sum FROM employee;

SELECT ename, commission, NVL(commission, 0) FROM employee;

SELECT ename, salary, commission, NVL(commission, 0), salary*12 + NVL(commission,0) FROM employee ORDER BY job;

SELECT ename, commission, NVL2(commission, commission, 0) FROM employee;
-- NVL2(a, b, c) : a�� ���� null�̸� c�ǰ���, null�� �ƴϸ� b�� ���� ���

SELECT ename, salary, commission, NVL2(commission, salary*12+commission, salary*12) FROM employee ORDER BY job;

SELECT nullif('a', 'a') FROM dual;

SELECT nullif('a', 'b') FROM dual;
--nullif(a, b) : a�� b�� ������ null, �ٸ��� a���

SELECT COALESCE('a', 'b', null, 'c') FROM dual;
SELECT COALESCE(null, 'b', null, 'c') FROM dual;
-- COALESCE(a, b, c, d) : �ش� ���ҵ� �� null�� �ƴ� ù��° ���Ҹ� ���


SELECT ename, dno, DECODE(dno, 10, 'ACC', 20, 'RES', 'DEF') FROM employee;

SELECT ename, salary, CASE WHEN salary >= 3000 THEN 'HIGH'
                            WHEN salary>=0 THEN 'LOW'
                            ELSE '0'
                            END AS case
                            FROM employee;
-- CASE WHEN ELSE END : ���ǹ�ó�� ��� ����


SELECT ename, salary*12+NVL(commission, 0) FROM employee;
