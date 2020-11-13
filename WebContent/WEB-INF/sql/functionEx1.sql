SELECT * FROM dual;
-- dual : �ܼ��� ����� ��� ���� ����ϴ� ��� ���� 1���� ���̺�

SELECT LOWER(ename) FROM employee;
-- LOWER : ���̺��� ���ҵ��� �ҹ��ڷ� �����Ͽ� ���

SELECT UPPER(ename) FROM employee;

SELECT INITCAP(ename) FROM employee;
--INITCAP : ������ ù���ڸ� �빰�ڷ� ��ȯ�ϰ� �������� �ҹ��ڷ� ���



SELECT ename, LENGTH(ename) length FROM employee;
-- length : �ش� Į�������� ���̸� ���

SELECT LENGTH('�����α׷���') FROM dual;

SELECT ename, LENGTHB(ename) len FROM employee;

SELECT LENGTHB('�����α׷���') FROM dual;
--LENGTHB : �ش� Į�������� ���̸� byte�������� ���(�ѱ� �ѱ��ڴ� 3byte)

SELECT CONCAT(ename, job) FROM employee;
--CONCAT : �Ķ���ͷ� �Է��� Į������ ���ҵ��� �����ִ� ����

SELECT ename || job FROM employee;
SELECT ename || ', ' || job FROM employee;
-- || : CONCAT�� ���� ������ ��

SELECT ename, SUBSTR(ename, 1, 2) FROM employee;
SELECT ename, SUBSTR(ename, -2, 2) FROM employee;
--SUBSTR : ù��° �ε������� ���� �ε������� �÷����Ҹ� ���

SELECT * FROM employee WHERE eno = 7788 OR eno = 7876;
SELECT * FROM employee WHERE substr(hiredate, 1, 2) = '87';
SELECT * FROM employee
WHERE SUBSTR(TO_CHAR(hiredate 'YYYY-MM-DD'), 1, 4) = '1987';

SELECT ename, INSTR(ename, 'AL') FROM employee;
--INSTR : Į�����Һ�  AL��  ��� ° �ε����� �����ϴ��� ���

SELECT INSTR('Tiger Tea Tire Ton', 'T', 2, 2) FROM dual; 
-- 2��° �ε��� ���ķ� ���������� ���� ���° �ε����� T�� �����ϴ��� ���

SELECT INSTRB('����Ŭ�ŴϾ�', 'Ŭ') FROM dual;

SELECT ename, LPAD(ename, 10, '#') FROM employee;
-- �÷��� 10ĭ���� ���ϰ� �����ʺ��� ä��� ����ִ� ���ʰ����� #���� ä�� ���

SELECT ename, RPAD(ename, 10, '@') FROM employee;

SELECT TRIM('   ABC   ') FROM dual;
SELECT RTRIM('A   ABC   ') FROM dual;
SELECT LTRIM('   ABC   A') FROM dual;
SELECT RTRIM('   ABC   A') FROM dual;
--TRIM : ������ ������� �� �� ���

SELECT 'Oracle Maina', TRIM('O'FROM'Oracle Mania') FROM dual;
-- �÷������� ù���ڳ� ���������ڰ� O�� �߶󳻰� ���(��ҹ��� ����)



