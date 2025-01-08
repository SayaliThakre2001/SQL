-- ---------------------------------------- 6/1/25 ---------------------------------

insert into cust values
(1,"AAA",111,"GFH"),
(2,"BBB",222,"HGF"),
(3,"CCC",333,"JKL"),
(4,"DDD",444,"RST");

select * from cust;

truncate table cust; #DDL COMAND

set sql_safe_updates = 0; #NEED TO OFF SAFE UPDATE MODE 


update cust    #UPDATE VALUES FOR PARTICULAR RECORD OR CELL
set loc = "PQR"
where cid = 1;
select * from cust;

update cust   #UPDATE VALUES FRO ENTIRE COLUMN AS CONDITION IS NOT MENTIONED
set loc = "RST";
select * from cust;

delete from cust   #DELETE
where cid = 4;
select * from cust;

delete from cust;
select * from cust;

-- ------------------------------------------------ 7/1/25 -----------------------------
-- -------------------------------------------- TCL ---------------
select * from cust;
set autocommit = 0;
insert into cust values(2,'aaa',222,'jgj');

select * from cust;

rollback;
select * from cust;

insert into cust values(2,'bbb',222,'opq');
commit;
select * from cust;

set sql_safe_updates=0;
delete from cust;
commit;
set autocommit = 0;
insert into cust values(1,'aaa',111,'ors'),(2,'bbb',222,'rst');
savepoint s1;
insert into cust values(3,'ccc',333,'pqr'),(4,'ddd',444,'bgt');
savepoint s2;
insert into cust values(5,'eee',555,'rfv'),(6,'fff',666,'mjy');

select * from cust;
rollback;
select * from cust;
rollback to s2;
select * from cust;
commit;
rollback to s1;
select * from cust;

