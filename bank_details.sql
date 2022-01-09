create database bank_account;
use bank_account;
create table account_details(
bankname varchar(20),
accountholder_name varchar(20),
 accountNo bigint,
 adress varchar(20),
 contact_no bigint);
 
 select*from account_details;
 insert into account_details value('sbi','aruna',6235627894,'tumkur',8550071423);
 insert into account_details value('karnataka','avinash',7895612345,'tumkur',7623622826);
 insert into account_details value('BOB','rajshekar',56971246641,'tumkur',9916073718);
 alter table account_details add column  account_type varchar(20);
 insert into account_details value('karnataka','aruna',65985321478,'kodigehalli',8550071423,'savings');
 update account_details set account_type='current' where bankname='BOB';
 update account_details set account_type='savings' where accountholder_name='avinash';
 insert into account_details value('hdfc','nandi',2365897456,'dabaspete',7623622826,'savings');
 insert into account_details value('dcc','rekha',589647893214,'sspuram',9480542254,'buisness');
 insert into account_details value('sbi','ravi',598974561235,'tumkur',9482800400,'buisness');
 insert into account_details value('indian','ravi',658923645,'bangalore',9482800400,'buisness');
 insert into account_details value('grameena_bank','manjula',8965323645,'kodigehalli',7326598123,'savings');
 select*from account_details;
 select*from account_details where adress='tumkur';
 select*from account_details where adress='tumkur' and bankname ='sbi';
select*from account_details where account_type in('savings','buisness');
select*from account_details where accountholder_name='aruna' or accountholder_name='ravi' or accountholder_name='avinash';
select*from account_details order by accountNo asc;
select*from account_details order by accountNo desc;
update account_details set accountNo=76236228267645 where accountholder_name='aruna';
delete from account_details where accountholder_name='ravi' and bankname='indian';
select*from account_details limit 3;
select*from account_details order by accountNo desc limit 4;
select*from account_details;
select*from account_details where accountholder_name like'%kar' or accountholder_name like're%';
select*from account_details where adress like '___ig%' or adress like '_____p%';
select contact_no as accountholder_contactNo from account_details;
select max(accountNo) as maximum_accountNo from account_details;
select min(accountNo) as minimum_accountNo from account_details;
select count(bankname)as number_of_banks_taken  from account_details;
select curdate() as present_date;
select curtime() as present_time;
select now() as present_date_time;
alter table account_details add column account_open_date_time datetime;
insert into account_details(bankname,accountholder_name,accountNo,adress,contact_no,account_type,account_open_date_time)value
('indian','ramchandra',7895625387,'bangalore',9906257819,'buisness',now());
select year(account_open_date_time)as accountopened_date_time from account_details where accountholder_name='ramchandra';
select monthname(account_open_date_time)as accountopened_month from account_details where accountholder_name='ramchandra';
select dayname(account_open_date_time)as accountopened_day_name from account_details where accountholder_name='ramchandra';
select minute(account_open_date_time)as accountopened_time_minute from account_details where accountholder_name='ramchandra';
select count(accountholder_name),accountNo from account_details group by accountNo;
select count(bankname),contact_no from account_details group by contact_no;
select*from account_details;
select min(accountNo) as least_accountNo ,account_type from account_details group by accountNo order by  adress ;
select*from account_details where accountNo=(select max(accountNo)from account_details);
select*from account_details where accountNo=(select max(accountNo)as second_heighest_accountNo from account_details where accountNo<(select max(accountNo)from account_details) );
select*from account_details where accountNo in((select max(accountNo)from account_details) , (select min(accountNo)from account_details));
select*from account_details where accountNo=(select max(accountNo)as third_heighest_accountNo from account_details where accountNo<(select max(accountNo)as second_heighest_accountNo
 from account_details where accountNo<(select max(accountNo)from account_details)));