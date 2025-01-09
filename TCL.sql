select *  from emp;
create view pqr
as
select ename ,sal, deptno from emp;

select * from pqr;

-- WAQTD DETAILS OF EMPLOYEES WHO WORK IN SAME LOCATION AS FORD
select * from emp
where deptno in  (select deptno from dept where loc in (select loc from dept where deptno in (select deptno from emp where ename = 'Ford')));

select e.* from emp e, dept d
where e.deptno = d.deptno and loc in (select loc from emp e, dept d where e.deptno = d.deptno and ename = "Ford");

-- WAQTD NAMES OF MANAGER IN LOWER CASE FOLLOWED BY THEIR EMPLOYEES NAEM IN REVERSE IF THE MANAGERS EARN COMMISION AND THEIR EMPLOYEES WORK AS ANALYST
        
    SELECT 
    LOWER(e2.ename) AS manager_name,
    REVERSE(e1.ename) AS reversed_employee_name
FROM 
    emp e1
JOIN 
    emp e2
ON 
    e1.mgr = e2.empno
WHERE 
    e2.comm IS NOT NULL
    AND e1.job = 'ANALYST';
    
-- WAQTD LOCATION OF EMPLOYEES REPORTING TO KING
select d.loc as location
from dept d 
where deptno in ( select deptno from emp where mgr = (select empno from emp where ename = "King"));

select loc
from emp e, dept d
where e.deptno = d.deptno and mgr in (select empno from emp 
where ename = 'king');

-- ------------------------------------- Indesx -------------------------------
explain select * from emp where deptno = 10;

create index I_deptno on emp (deptno);
explain select * from emp where deptno = 10;







