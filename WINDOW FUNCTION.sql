SELECT MAX(SAL)
FROM EMP;


select ename,sal from emp;


SELECT ENAME,SAL,MAX(sAL) over() as max_sal
FROM EMP;



-- max sal of each dept
SELECT MAX(sAL),DEPTNO
FROM EMP
GROUP BY DEPTNO;

select ename,sal,deptno from emp;



SELECT ENAME,SAL,DEPTNO,max(sAL) OVER(partition by DEPTNO) AS max_SAL
FROM EMP;







SELECT row_number() OVER() as SL_NO,EMP.*
FROM EMP;


SELECT ROW_NUMBER() OVER(PARTITION BY DEPTNO order by SAL ASC) AS SLNO, ENAME,SAL,JOB,DEPTNO
FROM EMP;



SELECT RANK() OVER( ORDER BY SAL DESC) AS SLNO, SAL
FROM EMP;



SELECT DENSE_RANK() OVER( ORDER BY SAL DESC) AS SLNO, SAL
FROM EMP;

select * from emp;

-- first 5 records
select * from emp limit 5;
-- 5th record
select * from emp limit 4,1;

-- 6TH AND 7TH RECORD
SELECT * FROM EMP LIMIT 5,2;

select sal
from emp order by sal desc;
select distinct sal from emp order by sal desc;
SELECT DISTINCT SAL FROM EMP ORDER BY SAL DESC LIMIT 2,1;


SELECT SAL FROM EMP ORDER BY SAL DESC;
SELECT SAL
FROM (SELECT DENSE_RANK() OVER(ORDER BY SAL DESC) AS SLNO,sal FROM EMP) AS E1
WHERE SLNO=3;






select ename ,hiredate,sal from emp order by hiredate;




SELECT ENAME,HIREDATE,SAL,LAG(SAL,1,NULL) OVER(ORDER BY HIREDATE) AS PRE_YR_SAL,
LEAD(SAL,1,NULL) OVER(ORDER BY HIREDATE) AS NEXT_YR_SAL
FROM EMP;




