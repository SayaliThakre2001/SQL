-- ------------------------------ DDL COMMANDS -----------------------------------
-- RENAME works for table wherese for each column we need to use alter with rename and every thing alter is used for column

create table customer
( CID char(1) primary key,
CNAME varchar(4) not null,
CNO int unique not null check (length(CNO)=3),
ADDRESS varchar(4));

desc customer;

rename table customer to  cust;   #RENAME TABLE
desc cust;

alter table cust   # ALTER - ADD COLUMN
add email varchar(4) not null;

alter table cust  #DROP COLUMN
drop column email;

alter table cust #RENAME COLUMN
rename column ADDRESS to loc;

alter table cust  #MODIFY DATA TYPE OF COLUMN
modify cid int;

alter table cust  # TO MPDIFY NULL TO NOT NULL VICE VERSA
modify CNO int null;

desc cust;





