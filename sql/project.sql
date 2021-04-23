drop table payment;
drop table payment_bankaccount;
drop table payment_card;

create table payment(

num number constraint payment_num_pk primary key,

id varchar2(20) constraint payment_id_fk references membership on delete cascade,

division varchar2(20),

ownerBirth varchar2(20),

setdefault varchar2(20)

);


create table payment_bankaccount(
num number constraint pb_num_fk references payment on delete cascade,

bankName varchar2(20),

bankAccount varchar2(20),

ownerName varchar2(20)
)

create table payment_card(
num number constraint pc_num_fk references payment on delete cascade,

cardNumber varchar2(20),

expirationDate varchar2(20),

securityNumber number(2)
)

insert into payment

values(payment_seq.nextval,'id1','account',(select birth from membership where id='id1'),'true');

select * from payment;

insert into payment_bankaccount
values(64,'bankName','bankAccount','ownerName');

delete from payment_card where num=64;


insert into payment

values(payment_seq.nextval,'id1','card',(select birth from membership where id='id1'),'true');


insert into payment_card

values(66, 'card_number','expiration_date',11);



select A.* , D.*
from
(select P.*, B.*
from payment P left join payment_bankAccount B
on P.num = B.num) A
left join
(select P.*, C.*
from payment P left join payment_card C
on P.num = C.num) D
on A.id = D.id;




;





create table payment(

num number constraint payment_num_pk primary key,

id varchar2(20) constraint payment_id_fk references membership on delete cascade,

division varchar2(20),

defaultmethod varchar2(20),

bankName varchar2(20),

bankAccount varchar2(20),

business varchar2(20),

ownerName varchar2(20),

ownerBirth varchar2(20),

cardNumber varchar2(20),

expirationDate varchar2(20),

securityNumber number(2)

);

insert into payment

values(payment_seq.nextval,'id1','account','del','111-222333-44-555',(select name from membership where id='id1'),(select birth from membership where id='id1'),null,null,null);

insert into payment

values(payment_seq.nextval,'id1','card',null,null,(select name from membership where id='id1'),(select birth from membership where id='id1'),'1111-2222-3334del','MM/YY',22);






drop table payment;
drop table payment2_bankaccount;
drop table payment2_card;

select * from tab;

create table payment2(

num number constraint payment2_num_pk primary key,

id varchar2(20) constraint payment2_id_fk references membership on delete cascade,

division varchar2(20),

ownerBirth varchar2(20),

setdefault varchar2(20)

);




create table payment2_bankaccount(

id varchar2(20) constraint pb2_id_fk references membership on delete cascade,

bankName varchar2(20),

bankAccount varchar2(20),

ownerName varchar2(20)
);



create table payment2_card(
id varchar2(20) constraint pc2_id_fk references membership on delete cascade,

cardNumber varchar2(20),

expirationDate varchar2(20),

securityNumber number(2)
)



select * from payment;

select * from tab;


---------------------------------------------------------------------------------------------------


-- -- --project column

--
--num
--state
--id
--title
--summary
--category
--urlAddress
--makerName
--makersummary
--makerLocation
--targetAmount
--openDate
--closeDate
--refund
--inform
--certificate
--projectStory
--email
--phone
--bankAccount
--taxReceipt
--gift_id
--media_id
--search_id
--

-- -- --


create table project(
num number constraint project_num_pk primary key,
state varchar2(20) default 'temporary',
id varchar2(20) constraint project_id_fk references membership on delete cascade,
title varchar2(20) default null,
summary clob default null,
category varchar2(20) default null,
urlAddress varchar2(20) default null,
makerName varchar2(20) default null,
makerSummary clob default null,
makerLocation varchar2(20) default null,
targetAmount number default null,
openDate varchar2(20) default null,
closeDate varchar2(20) default null,
refund clob default null,
inform varchar2(20) default null,
certificate clob default null,
projectStory clob default null,
email varchar2(40) default null,
phone varchar2(20) default null,
bankAccount varchar2(20) default null,
taxReceipt varchar2(20) default null,
gift_id number,
media_id number,
search_id number
)




create sequence project_seq;
create sequence pGift_seq;
create sequence pMedia_seq;
create sequence pSearch_seq;





insert into project(
num,
id
)
values(project_seq.nextval,'id1');

select * from project;






drop table project;

insert into project
values(
project_seq.nextval,'id1', 'title_test', 'summary_test','category_test','url_test',(select name from membership where id='id1'),'makerSummary_test','makerLocation',1000000,'21/04/25','21/05/01',
'efund_test','inform_test','certificate_test','project_story','email_test',(select phone from membership where id='id1'),(select bankAccount from payment where num=(select max(num) from payment where id='id1' and division='account')
),'tax_receipt'
);


insert into project
values(
project_seq.nextval,'id1', 'title_test2', 'summary_test2','category_test2','url_test2',(select name from membership where id='id1'),'makerSummary_test2','makerLocation2',1000,'21/04/26','21/05/10',
'efund_test2','inform_test2','certificate_test2','project_story2','email_test2',(select phone from membership where id='id1'),(select bankAccount from payment where num=(select max(num) from payment where id='id1' and division='account')
),'tax_receipt2'
);




create table project_gift(
gift_id number constraint pg_giftid_fk references project on delete cascade,
giftNum number constraint pg_gifrNum_pk primary key,
price number,
giftName varchar2(20),
giftSummary varchar2(4000)
)

insert into project_gift
values(
12,project_seq.nextval,5000,'title1','gifrSummary1'
)

insert into project_gift
values(
12,project_seq.nextval,10000,'title2','gifrSummary2'
)

insert into project_gift
values(
12,project_seq.nextval,15000,'title3','gifrSummary3'
)

select * from project_gift;




create table project_media(
media_id number constraint pm_mediaid_fk references project on delete cascade,
fileNum number constraint pm_fileNum_pk primary key,
division varchar2(20),
fileName varchar2(20),
origineName varchar2(20)

)




insert into project_media
values(
12,project_seq.nextval,'photo','fileName1','origineName1'
)
insert into project_media
values(
12,project_seq.nextval,'video','fileName2','origineName2'
)
insert into project_media
values(
12,project_seq.nextval,'photo','fileName3','origineName4'
)

select * from project_media;





create table project_search(
search_id number constraint ps_searchid_fk references project on delete cascade,
searchNum number constraint ps_searchNum_pk primary key,
searchTag varchar2(40)

)




insert into project_search
values(
12,project_seq.nextval,'searchTag1'
)

insert into project_search
values(
12,project_seq.nextval,'searchTag2'
)

insert into project_search
values(
12,project_seq.nextval,'searchTag2'
)


drop table project_gift;
drop table project_search;
drop table project_media;
drop table project;

select bankAccount from payment where num=(select max(num) from payment where id='id1' and division='account')


select * from Project;

delete from project where num=25;
select project_seq.nextval from dual;


select * from project  where id='id1' order by num desc

select * from tab;

select state from project;


commit work;