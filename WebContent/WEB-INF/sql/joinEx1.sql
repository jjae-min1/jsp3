SELECT * FROM employee;
-- 14행, 8열
SELECT * FROM department;
-- 4개행, 3열


SELECT * FROM employee, department;
--14*4행 11열 ( employee행 하나가 department행에 각각 4번씩 적용되어 출력)

SELECT eno, ename, dname FROM employee, department;


SELECT eno, ename, employee.dno edno, department.dno ddno
FROM employee, department;
--중복되는 열을 갖을 경우 테이블.열이름 으로 표현해야 함


SELECT eno, ename, employee.dno edno, department.dno ddno
FROM employee, department WHERE eno = 7369 AND employee.dno = department.dno;
--두개의 테이블을 통해 원하는 정보를 출력시 WHERE절에 적당한 조건을 추가해야 함


SELECT * FROM employee, department WHERE employee.dno = department.dno;


SELECT eno, ename, dname FROM employee, department WHERE employee.dno = department.dno AND eno = 7788;


SELECT eno, ename, dname, dno FROM employee, department WHERE employee.dno = department.dno AND eno = 7788;
-- dno칼럼이 양쪽테이블에 모두 존재하므로 오류 발생(SELECT절에 중복된 칼럼 선언시 앞에 테이블명을 입력해줘야 함)


SELECT employee.eno, employee.ename, department.dname, employee.dno FROM employee, department WHERE employee.dno = department.dno AND employee.eno=7788;

SELECT eno, ename, dname, employee.dno FROM employee, department WHERE employee.dno = department.dno AND eno=7788;
--칼럼의 소속이 명확하면 테이블명 언급 안해줘도 됨



--equi join
SELECT * FROM employee, department WHERE employee.dno = department.dno;

SELECT * FROM employee e, department d WHERE e.dno = d.dno AND e.eno=7369;
--테이블 별칭 사용


SELECT e.eno, e.ename, e.dno, d.dname FROM employee e, department d WHERE e.dno = d.dno;



SELECT ename, department.dno, dname FROM employee, department WHERE department.dno = employee.dno AND ename = 'SCOTT';

SELECT ename, dname FROM employee, department WHERE department.dno = employee.dno AND ename LIKE '%A%';


-- join

SELECT * FROM employee NATURAL JOIN department;
--natural join : 테이블간 공통 컬럼명(타입까지) 있을 시 컬럼을 분석하여 동일한 행들만 출력(equi join과 동일, 중복된 칼럼 사라짐)
SELECT * FROM employee NATURAL JOIN department WHERE eno = 7782;


--join using(USING 이후의 컬럼을 사용하여 두 테이블을 join, 타입은 달라도 됨)
SELECT * FROM employee JOIN department USING(dno);
SELECT * FROM employee JOIN department USING(dno) WHERE eno = 7788;


--join on(임의의 조건이나 조인할 컬럼명 지정)
SELECT * FROM employee e JOIN department d ON e.dno = d.dno;
SELECT * FROM employee e JOIN department d ON e.dno = d.dno WHERE eno = 7788;












