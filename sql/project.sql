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
makerName varchar2(20) default null,
makerSummary clob default null,
makerLocation varchar2(20) default null,
targetAmount number default null,
openDate varchar2(20) default null,
closeDate varchar2(20) default null,
projectStory clob default null,
phone varchar2(20) default null,
bankAccount varchar2(20) default null,
media_id number constraint project_pmid_uq unique,
search_id number constraint project_psid_uq unique
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
gift_id number constraint pg_giftid_fk references project(gift_id) on delete cascade,
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
media_id number constraint pm_mediaid_fk references project(media_id) on delete cascade,
fileNum number constraint pm_fileNum_pk primary key,
division varchar2(20) default null,
fileName varchar2(400),
origineName varchar2(400)

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
search_id number constraint ps_searchid_fk references project(search_id) on delete cascade,
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

delete from project_media;

select * from project  where id='id1' order by num desc

select * from tab;

select state from project;

select * from project_media where media_id=33;

select * from project;

delete from project;

select pMedia_seq.nextval from dual;


insert into project
		(num, id, title, category,makerName,gift_id,media_id,search_id)
		values(9999,'admin','must_del','must_del','must_del',pGift_seq.nextval,pMedia_seq.nextval,pSearch_seq.nextval);

		
insert into project_media
		(media_id,filenum,division,filename,originename)
		values(37,project_seq.nextval,'mustdel','del','del')
	
select * from project_search;
		
rollback work;


create table project_search(
search_id number constraint ps_searchid_fk references project(search_id) on delete cascade,
searchNum number constraint ps_searchNum_pk primary key,
searchTag varchar2(40)

)

select P.*, PS.* from
project P left join project_search PS
on P.search_id = PS.search_id
where P.category='b' and PS.searchTag like '%a%'

--------------------------------------------------
-- 게시판
create table board(
boardSort varchar2(100) ,
num number constraint board_num_pk primary key,
title varchar2(200),
id varchar2(20) constraint board_id_fk references membership,
writer varchar2(200),
regDate date,
hit number,
contents clob
)

--시퀀스
create sequence board_seq
---------------------------------------------------

drop table board;

select * from
		(select rownum R, N.* from
		(select * from notice where 
		
		<choose>
			<when test="kind=='Writer'">
				writer
			</when>
			<when test="kind=='Contents'">
				contents
			</when>
			<otherwise>
				title
			</otherwise>
		</choose>

		like '%' || #{search} || '%' and num>0 order by num desc) N)
		where R between #{startRow} and #{lastRow}
		
		
	
select * from
(select rownum R, B.* from	
(select * from board where
boardSort ='notice'
and

writer like '%%' and num>0 order by num desc) B)


create table rescue(
 status VARCHAR2(20),
 sn VARCHAR2(20) constraint res_sn_pk primary key,
 zoneSn VARCHAR2(20) default ' ',
 resDate DATE,
 province VARCHAR2(20),
 city VARCHAR2(20),
 location VARCHAR2(400) null,
 species VARCHAR2(20) null,
 kind VARCHAR2(50) null,
 sex VARCHAR2(20) null,
 age VARCHAR2(20) null,
 color VARCHAR2(20) null,
 desex VARCHAR2(20) null,
 character VARCHAR2(20) null,
 weight NUMBER(4, 1) default 0.0,
 health VARCHAR2(20) null,
 feature VARCHAR2(1000) null,
 adoptDate DATE,
 returnDate DATE
 );
 
 
 
 
 insert into rescue values('구조', '210408-6391','서초-2021-00041', '2021-04-08', 
 '서울특별시', '서초구', '방배4동 어린이집 근처',  '개', '시츄', '수컷', '10개월(추정)', '갈/흰', '안 했음', '친화적',
 '4.1','양호','다시사랑받개 보호중. 전신미용흔적. 양윗아래 송곳니 유치남음. 활발함. 사람좋아함. 꼬리단미안됨. 털상태양호.','2000-01-01', '2000-01-01');
 
 insert into rescue values('구조', '210414-0013','동두천-2021-00074', '2021-04-14', 
 '경기도', '동두천시', '생연동 512-14 인근',  '기타', '고슴도치', '미상', '3년(추정)', '갈/흰', '확인불가', '예민',
 '0.5','양호','박스에담겨 유기됨. 피부각질. 사람손탄듯하나 몸을 펴지않음/성별확인불가/정확한나이 추정불가. 외관때탐.','2000-01-01', '2000-01-01');
 
 insert into rescue values('구조', '210417-1178', ' ' , '2021-04-17', 
 '서울특별시', '영등포구', '양평동 서부간선도로 일대',  '기타',  '닭', '암컷', ' 1년(추정)', '갈', '확인불가', '예민',
 '1','양호','사람피함. 알낳음. 외관양호.','2000-01-01', '2000-01-01');
 
 insert into rescue values('구조', '210429-0007','동두천-2021-00080', '2021-04-29', 
 '경기도', '동두천시', ' 싸리말로 65 노블레스빌 주...',  '개', '요크셔테리어', '암컷', '10년(추정)', '갈/검', '확인불가', '친화적',
 '2','치료요함','백내장. 모든이빨없음. 온순/사람따름. 꼬리단미됨. 털때탐. 고령. 결막염. 하악골절.', '2000-01-01', '2000-01-01');
 
 insert into rescue values('구조', '210429-4166', ' ' , '2021-04-29', 
 '서울특별시', '도봉구', '방학동 707-7 홈플러스...',  '개',  '스피츠', '수컷', ' 3년(추정)', '흰', '안 했음', '친화적',
 '4','양호','폼피츠인듯함. 눈물자국 약간. 코검정. 사람좋아함/헥헥댐/짖음. 꼬리단미안됨. 털상태 양호..','2000-01-01', '2000-01-01');

 insert into rescue values('구조', '210428-0027', '노원-2021-00053' , '2021-04-28', 
 '서울특별시', '노원구', '노원로22길 1 노해근린공..',  '기타',  '거북이', '수컷', ' 3년(추정)', '노랑/검줄', '확인불가', '친화적',
 '0.5','양호', '쇼핑백에담겨있었다함. 페닌슐라쿠터종추정. 다른거북이에 비해 활발하고 겁없음. 깨끗함. 나이추정불가.','2000-01-01', '2000-01-01');

insert into rescue values('구조', '210428-0013', '김포-2021-00229', '2021-04-28', 
 '경기도', '김포시', '고촌읍 향산리 669 인근',  '개', 'Mix', '암컷', '05년(추정)', '회/흰', '확인불가', '친화적',
 '4.8','양호', '양귀반접힘. 코검정. 양눈눈물자국. 유선발달/젖나옴. 치석. 사람따름. 온순함. 꼬리단미안됨. 털때탐. 피부질환. 양슬개골.', '2000-01-01', '2000-01-01');

insert into rescue values('구조', '210428-0012', '김포-2021-002298', '2021-04-28', 
 '경기도', '김포시', '고촌읍 향산리 669 인근',  '개', 'Mix', '수컷', '02개월(추정)', '갈/검/흰', '안 했음', '친화적',
 '2.0', '양호', '양귀접힘. 코검정. 사람따름. 온순함. 꼬리단미안됨. 털상태양호.', '2000-01-01', '2000-01-01');


insert into rescue values('구조', '210428-0011', '김포-2021-00227', '2021-04-28', 
 '경기도', '김포시', '고촌읍 향산리 669 인근', '개', 'Mix', '수컷', '02개월(추정)', '갈/검/흰', '안 했음', '친화적',
 '2.3', '양호', '양귀접힘. 코검정. 약간겁/사람따름. 꼬리단미안됨. 털상태양호.', '2000-01-01', '2000-01-01');

--
insert into rescue values('구조', '210428-0008', '연천-2021-00139', '2021-04-28', 
 '경기도', '연천군', '군남면 청정로 2310번길', '개', 'Mix', '암컷', '05개월(추정)', '검/흰', '확인불가', '친화적',
 '4.3', '치료요함', '양귀접힘. 코검정. 전신피부질환/몸각질. 사람따름. 꼬리단미안됨. 털때탐.', '2000-01-01', '2000-01-01');
 
 insert into rescue values('구조', '210428-0007', '연천-2021-001398', '2021-04-28', 
 '경기도', '연천군', '군남면 청정로 2310번길', '개', 'Mix', '수컷', '05개월(추정)', '검/흰', '안 했음', '친화적',
 '4.3', '치료요함', '양귀접힘. 코검정. 전신피부질환/몸각질. 사람따름. 꼬리단미안됨. 털때탐.', '2000-01-01', '2000-01-01');
 
 insert into rescue values('구조', '210428-0006', '연천-2021-001397', '2021-04-28', 
 '경기도', '연천군', '군남면 청정로 2310번길', '개', 'Mix', '수컷', '05개월(추정)', '검/흰', '안 했음', '친화적',
 '4.3', '치료요함', '양귀접힘. 코검정. 전신피부질환/몸각질. 사람따름. 꼬리단미안됨. 털때탐.', '2000-01-01', '2000-01-01');
 
 insert into rescue values('구조', '210428-0005', '연천-2021-00136', '2021-04-28', 
 '경기도', '연천군', '군남면 청정로 2310번길', '개', 'Mix', '암컷', '05개월(추정)', '검/흰', '확인불가', '친화적',
 '4.3', '치료요함', '양귀접힘. 코검정. 전신피부질환/몸각질. 사람따름. 꼬리단미안됨. 털때탐.', '2000-01-01', '2000-01-01');
 
 --
 insert into rescue values('구조', '210428-0001', '성북-2021-00058', '2021-04-28', 
 '서울특별시', '성북구', '하월곡동 224 샹그레빌 .', '개', 'Mix', '암컷', '02년(추정)', '갈/흰', '확인불가', '친화적',
 '3.5', '치료요함', '스피츠혼종추정. 전신미용흔적. 고개가 왼쪽으로 계속 돌아감. 몸 가누지못함. 양슬개골 탈구. 온순함. 꼬리단미안됨. 털상태 양호..', '2000-01-01', '2000-01-01');
 
  insert into rescue values('구조', '210427-0303', '포천-2021-00340', '2021-04-27', 
 '경기도', '포천시', '일동면 기산리 1404 인근 .', '개', '치와와', '암컷', '07년(추정)', '흰', '확인불가', '친화적',
 '6.5', '치료요함', '양귀뒤로넘김. 치석. 코갈색. 등쪽피부질환. 좌전지 발가락 사이 작은혹. 사람따름. 온순함. 얌전함. 꼬리단미안됨. 털상태양호. 왼무릎안쪽종양.', '2000-01-01', '2000-01-01');
 
 insert into rescue values('구조', '210427-0016', '연천-2021-00131', '2021-04-26', 
 '경기도', '연천군', '군남면 오리골길 117 폐축사', '개', 'Mix', '수컷', '05개월(추정)', '갈/흰', '안 했음', '친화적',
 '2.3', '양호', '겁있음. 소심함. 꼬리단미안됨. 털때탐.', '2000-01-01', '2000-01-01');
 
 
 insert into rescue values('구조', '210427-0015', '연천-2021-00130', '2021-04-26', 
 '경기도', '연천군', '군남면 오리골길 117 폐축사', '개', 'Mix', '수컷', '05개월(추정)', '갈/흰', '안 했음', '친화적',
 '2.6', '양호', '겁있음. 소심함. 꼬리단미안됨. 털때탐.', '2000-01-01', '2000-01-01');
 
 insert into rescue values('구조', '210427-0014', '연천-2021-00129', '2021-04-26', 
 '경기도', '연천군', '군남면 오리골길 117 폐축사', '개', 'Mix', '수컷', '04개월(추정)', '갈/흰', '안 했음', '친화적',
 '2.6', '치료요함', '약간겁있음. 소심함. 꼬리단미안됨. 털때탐.', '2000-01-01', '2000-01-01');
 ---
 insert into rescue values('구조', '210423-0018', '영등포-2021-00038' , '2021-04-23', 
 '서울특별시', '영등포구', '영신로 9 가길 2-8',  '기타',  '토끼', '수컷', '02개월(추정)', '갈/흰', '안 했음', '친화적',
 '0.5','양호', '사람손탄듯. 얌전함. 털상태양호. ','2000-01-01', '2000-01-01');
 
 insert into rescue values('구조', '210426-0020', ' ' , '2021-04-26', 
 '서울특별시', '서초구', '강남대로 293-2 인근',  '기타',  '토끼', '수컷', '1년(추정)', '갈/검', '했음', '친화적',
 '1.5','양호', '사람손 어느정도 탐. 중성화여부 정확치않음. 털상태 양호.','2000-01-01', '2000-01-01');

insert into rescue values('구조', '210417-1171', '중구-2021-00018' , '2021-04-17', 
 '서울특별시', '중구', '회현동1가 남산 산책로 일대',  '기타',  '토끼', '수컷', '2년(추정)', '갈/흰/검', '했음', '친화적',
 '1.5','치료요함', '얼굴과 몸 일부 털빠짐/피부질환. 코검정. 오른발 안쪽으로 휘어있음. 털때탐.','2000-01-01', '2000-01-01');
 
 insert into rescue values('구조', '210326-0015', '동대문-2021-00030' , '2021-03-26', 
 '서울특별시', '동대문구', '휘경2동 배봉산 창고 앞',  '기타',  '토끼', '암컷', '2년(추정)', '흰/검', '확인불가', '친화적',
 '2.5','치료요함', '온순함. 겁있으나 만져주는거 좋아하는듯. 정확한 나이 추정 불가. 털상태양호.','2000-01-01', '2000-01-01');

insert into rescue values('구조', '210413-0012', '성동-2021-00035', '2021-04-13', 
 '서울특별시', '성동구', '용답19길 7-1 인근', '기타', '기니피그', '암컷', '07개월(추정)', '흰/갈', '확인불가', '친화적',
 '0.5', '양호', '크레스티드인듯. 코분홍. 도망다님. 온순함. 털때탐. ','2000-01-01', '2000-01-01');

---ㄱㅏ족
insert into rescue values('가족', '210331-0016', '-', '2021-03-31', 
 '서울특별시', '서대문구', '홍제천로 136 연희파크', '개', '보더콜리', '수컷', '02년(추정)', '검/흰', '했음', '친화적',
 '12.5', '양호', '-', '2000-01-01', '2021-04-01');
 
 
 insert into rescue values('가족', '210330-4098', '-', '2021-03-30', 
 '서울특별시', '도봉구', '쌍문동 선덕고교 앞', '개', '시츄', '수컷', '08년(추정)', '검/흰', '했음', '친화적',
 '4.5', '양호', '-', '2000-01-01', '2021-03-31');
 
----입양
  insert into rescue values('입양', '210410-1154', '-', '2021-04-10', 
 '서울특별시', '송파구', '가락동 탄천교 인근', '개', '푸들', '암컷', '1년(추정)', '흰', '확인불가', '친화적',
 '4.5', '양호', '-', '2021-04-29', '2000-01-01');
 
   insert into rescue values('입양', '210419-0003', '-', '2021-04-18', 
 '서울특별시', '송파구', '마천 2동 137-4 인근', '고양이', '코리안숏헤어', '미상', '(추정)', '갈/검/흰', '확인불가', '친화적',
 '0.3', '양호', '새끼임', '2021-04-30', '2000-01-01');
 
 commit;
 
 
 
 
 create table adopt(
adoptNum number constraint a_sn_pk primary key,
id varchar2(20) constraint a_id_fk references membership (id),
sn varchar2(20) constraint a_sn_fk references rescue (sn),
species varchar2(20),
kind varchar2(50),
reason varchar2(500),
famAgree varchar2(1),
adoptEx varchar2(1),
pastTypeQ varchar2(200) null,
pastNow varchar2(200) null,
haveAnimal varchar2(1) null,
housingType varchar2(20),
afterMoving varchar2(300),
afterWedding varchar2(300),
desexAgree varchar2(1),
pass varchar2(20) null,
applyDate date default sysdate,
callCheck date,
visitCheck date,
adoptDate date

)


insert into adopt values('1', 'id8', '210428-0013',	'개', 'Mix','그냥',	'Y', 'Y',	
'없음',	'없음',	'N',	'다세대주택',	'이사갈 경우 같이 갈 것 임',	'결혼했음.',	'Y',	'보류',	'21/05/02',	'00/01/01',	'00/01/01',	'00/01/01');


insert into adopt values('2', 'id7', '210428-0012',	'개', 'Mix','그냥',	'Y', 'Y',	
'없음',	'없음',	'N',	'다세대주택',	'이사갈 경우 같이 갈 것 임',	'결혼했음.',	'Y',	'보류',	'21/05/02',	'00/01/01',	'00/01/01',	'00/01/01');


insert into adopt values('3', 'id6', '210428-0011',	'개', 'Mix','그냥',	'Y', 'Y',	
'없음',	'없음',	'N',	'다세대주택',	'이사갈 경우 같이 갈 것 임',	'결혼했음.',	'Y',	'보류',	'21/05/02',	'00/01/01',	'00/01/01',	'00/01/01');

insert into adopt values('4', 'id5', '210428-0008',	'개', 'Mix','그냥',	'Y', 'Y',	
'없음',	'없음',	'N',	'다세대주택',	'이사갈 경우 같이 갈 것 임',	'결혼했음.',	'Y',	'보류',	'21/05/02',	'00/01/01',	'00/01/01',	'00/01/01');


insert into adopt values('5', 'id1', '210429-4166',	'개', '스피츠','그냥',	'Y', 'Y',	
'없음',	'없음',	'N',	'단독주택',	'영원히',	'함께',	'Y',	'보류',	'21/05/02',	'00/01/01',	'00/01/01',	'00/01/01');

insert into adopt values('6', 'id1', '210428-0027',	'기타', '거북이','거북이좋아요',	'Y', 'Y',	
'없음',	'없음',	'N',	'단독주택',	'영원히',	'함께',	'Y',	'보류',	'21/05/02',	'00/01/01',	'00/01/01',	'00/01/01');

insert into adopt values('7', 'id2', '210429-0007',	'개', '요크셔테리어','요크좋아요',	'Y', 'Y',	
'시츄1마리',	'시골집에감',	'N',	'아파트',	'같이가기',	'함께가기',	'Y',	'보류',	'21/05/02',	'00/01/01',	'00/01/01',	'00/01/01');

insert into adopt values('8', 'id2', '210429-4166',	'개', '스피츠','스피츠도 좋아함',	'Y', 'Y',	
'시츄1마리',	'없음',	'N',	'아파트',	'영원히',	'함께',	'Y',	'보류',	'21/05/02',	'00/01/01',	'00/01/01',	'00/01/01');

insert into adopt values('9', 'id3', '210428-0027',	'기타', '거북이','거북이관리를 잘 할 수 있을거같다',	'Y', 'N',	
'없음',	'없음',	'N',	'기타',	'해외로 간다면 친구에게 주고 갈것',	'같이 쭉 살것',	'Y',	'보류',	'21/05/02',	'00/01/01',	'00/01/01',	'00/01/01');

insert into adopt values('10', 'id4', '210428-0008',	'개', 'Mix','그냥',	'Y', 'Y',	
'믹스견2마리',	'시골집에 감',	'N',	'다세대주택',	'이사갈 경우 같이 갈 것 임',	'결혼했음.',	'Y',	'보류',	'21/05/02',	'00/01/01',	'00/01/01',	'00/01/01');

insert into adopt values('11', 'id9', '210428-0006',	'개', 'Mix','그냥',	'Y', 'Y',	
'믹스견2마리',	'시골집에 감',	'N',	'다세대주택',	'이사갈 경우 같이 갈 것 임',	'결혼했음.',	'Y',	'보류',	'21/05/02',	'00/01/01',	'00/01/01',	'00/01/01');

insert into adopt values('12', 'id10', '210428-0005',	'개', 'Mix','그냥',	'Y', 'Y',	
'믹스견2마리',	'시골집에 감',	'N',	'다세대주택',	'이사갈 경우 같이 갈 것 임',	'결혼했음.',	'Y',	'보류',	'21/05/02',	'00/01/01',	'00/01/01',	'00/01/01');




insert into membership values('id1','pw1','민준','1990-01-01','010-2003-1111','address_test')
 insert into membership values('id2','pw1','서준','1990-01-02','010-2003-1112','address_test');
 insert into membership values('id3','pw1','예준','1990-01-03','010-2003-1113','address_test');
 insert into membership values('id4','pw1','도윤','1990-01-04','010-2003-1114','address_test');
 insert into membership values('id5','pw1','시우','1990-01-05','010-2003-1115','address_test');
 insert into membership values('id6','pw1','주원','1990-01-06','010-2003-1116','address_test');
 insert into membership values('id7','pw1','지호','1990-01-07','010-2003-1117','address_test');
 insert into membership values('id8','pw1','지후','1990-01-08','010-2003-1118','address_test');
 insert into membership values('id9','pw1','준서','1990-01-09','010-2003-1119','address_test');
 insert into membership values('id10','pw1','준우','1990-01-10','010-2003-1110','address_test');
 insert into membership values('id11','pw1','현우','1990-01-11','010-2003-1121','address_test');
 insert into membership values('id12','pw1','도현','1990-01-12','010-2003-1122','address_test');
 insert into membership values('id13','pw1','지훈','1990-01-13','010-2003-1123','address_test');
 insert into membership values('id14','pw1','건우','1990-01-14','010-2003-1124','address_test');
 insert into membership values('id15','pw1','우진','1990-01-15','010-2003-1125','address_test');
 insert into membership values('id16','pw1','선우','1990-01-16','010-2003-1126','address_test');
 insert into membership values('id17','pw1','서윤','1990-01-17','010-2003-1127','address_test');
 insert into membership values('id18','pw1','지우','1990-01-18','010-2003-1128','address_test');
 insert into membership values('id19','pw1','서현','1990-01-19','010-2003-1129','address_test');
 insert into membership values('id20','pw1','민서','1990-01-20','010-2003-1120','address_test');
 insert into membership values('id21','pw1','민준','1990-02-01','010-2004-1111','address_test');
 insert into membership values('id22','pw1','서준','1990-02-02','010-2004-1112','address_test');
 insert into membership values('id23','pw1','예준','1990-02-03','010-2004-1113','address_test');
 insert into membership values('id24','pw1','도윤','1990-02-04','010-2004-1114','address_test');
 insert into membership values('id25','pw1','시우','1990-02-05','010-2004-1115','address_test');
 insert into membership values('id26','pw1','주원','1990-02-06','010-2004-1116','address_test');
 insert into membership values('id27','pw1','지호','1990-02-07','010-2004-1117','address_test');
 insert into membership values('id28','pw1','지후','1990-02-08','010-2004-1118','address_test');
 insert into membership values('id29','pw1','준서','1990-02-09','010-2004-1119','address_test');
 insert into membership values('id30','pw1','준우','1990-02-10','010-2004-1110','address_test');
 insert into membership values('id31','pw1','현우','1990-02-11','010-2004-1121','address_test');
 insert into membership values('id32','pw1','도현','1990-02-12','010-2004-1122','address_test');
 insert into membership values('id33','pw1','지훈','1990-02-13','010-2004-1123','address_test');
 insert into membership values('id34','pw1','건우','1990-02-14','010-2004-1124','address_test');
 insert into membership values('id35','pw1','우진','1990-02-15','010-2004-1125','address_test');
 insert into membership values('id36','pw1','선우','1990-02-16','010-2004-1126','address_test');
 insert into membership values('id37','pw1','서윤','1990-02-17','010-2004-1127','address_test');
 insert into membership values('id38','pw1','지우','1990-02-18','010-2004-1128','address_test');
 insert into membership values('id39','pw1','서현','1990-02-19','010-2004-1129','address_test');
 insert into membership values('id40','pw1','민서','1991-02-20','010-2004-1120','address_test');
 insert into membership values('id41','pw1','하윤','1991-01-01','010-2023-1111','address_test');
 insert into membership values('id42','pw1','윤서','1991-01-02','010-2023-1112','address_test');
 insert into membership values('id43','pw1','지유','1991-01-03','010-2023-1113','address_test');
 insert into membership values('id44','pw1','도윤','1991-01-04','010-2023-1114','address_test');
 insert into membership values('id45','pw1','지민','1991-01-05','010-2023-1115','address_test');
 insert into membership values('id46','pw1','채원','1991-01-06','010-2023-1116','address_test');
 insert into membership values('id47','pw1','지윤','1991-01-07','010-2023-1117','address_test');
 insert into membership values('id48','pw1','은서','1991-01-08','010-2023-1118','address_test');
 insert into membership values('id49','pw1','준서','1991-01-09','010-2023-1119','address_test');
 insert into membership values('id50','pw1','수아','1991-01-10','010-2023-1110','address_test');
 insert into membership values('id51','pw1','민준','1990-01-01','010-2003-1111','address_test');
 insert into membership values('id52','pw1','서준','1990-01-02','010-2003-1112','address_test');
 insert into membership values('id53','pw1','예준','1990-01-03','010-2003-1113','address_test');
 insert into membership values('id54','pw1','도윤','1990-01-04','010-2003-1114','address_test');
 insert into membership values('id55','pw1','시우','1990-01-05','010-2003-1115','address_test');
 insert into membership values('id56','pw1','주원','1990-01-06','010-2003-1116','address_test');
 insert into membership values('id57','pw1','지호','1990-01-07','010-2003-1117','address_test');
 insert into membership values('id58','pw1','지후','1990-01-08','010-2003-1118','address_test');
 insert into membership values('id59','pw1','준서','1990-01-09','010-2003-1119','address_test');
 insert into membership values('id60','pw1','준우','1990-01-10','010-2003-1110','address_test');
 insert into membership values('id61','pw1','현우','1990-01-11','010-2003-1121','address_test');
 insert into membership values('id62','pw1','도현','1990-01-12','010-2003-1122','address_test');
 insert into membership values('id63','pw1','지훈','1990-01-13','010-2003-1123','address_test');
 insert into membership values('id64','pw1','건우','1990-01-14','010-2003-1124','address_test');
 insert into membership values('id65','pw1','우진','1990-01-15','010-2003-1125','address_test');
 insert into membership values('id66','pw1','선우','1990-01-16','010-2003-1126','address_test');
 insert into membership values('id67','pw1','서윤','1990-01-17','010-2003-1127','address_test');
 insert into membership values('id68','pw1','지우','1990-01-18','010-2003-1128','address_test');
 insert into membership values('id69','pw1','서현','1990-01-19','010-2003-1129','address_test');
 insert into membership values('id70','pw1','민서','1990-01-20','010-2003-1120','address_test');
 insert into membership values('id71','pw1','민준','1990-02-01','010-2004-1111','address_test');
 insert into membership values('id72','pw1','서준','1990-02-02','010-2004-1112','address_test');
 insert into membership values('id73','pw1','예준','1990-02-03','010-2004-1113','address_test');
 insert into membership values('id74','pw1','도윤','1990-02-04','010-2004-1114','address_test');
 insert into membership values('id75','pw1','시우','1990-02-05','010-2004-1115','address_test');
 insert into membership values('id76','pw1','주원','1990-02-06','010-2004-1116','address_test');
 insert into membership values('id77','pw1','지호','1990-02-07','010-2004-1117','address_test');
 insert into membership values('id78','pw1','지후','1990-02-08','010-2004-1118','address_test');
 insert into membership values('id79','pw1','준서','1990-02-09','010-2004-1119','address_test');
 insert into membership values('id80','pw1','준우','1990-02-10','010-2004-1110','address_test');
 insert into membership values('id91','pw1','현우','1990-02-11','010-2004-1121','address_test');
 insert into membership values('id92','pw1','도현','1990-02-12','010-2004-1122','address_test');
 insert into membership values('id93','pw1','지훈','1990-02-13','010-2004-1123','address_test');
 insert into membership values('id94','pw1','건우','1990-02-14','010-2004-1124','address_test');
 insert into membership values('id95','pw1','우진','1990-02-15','010-2004-1125','address_test');
 insert into membership values('id96','pw1','선우','1990-02-16','010-2004-1126','address_test');
 insert into membership values('id97','pw1','서윤','1990-02-17','010-2004-1127','address_test');
 insert into membership values('id98','pw1','지우','1990-02-18','010-2004-1128','address_test');
 insert into membership values('id99','pw1','서현','1990-02-19','010-2004-1129','address_test');
 insert into membership values('id100','pw1','민서','1991-02-20','010-2004-1120','address_test');
 insert into membership values('id101','pw1','하윤','1991-01-01','010-2023-1111','address_test');
 insert into membership values('id102','pw1','윤서','1991-01-02','010-2023-1112','address_test');
 insert into membership values('id103','pw1','지유','1991-01-03','010-2023-1113','address_test');
 insert into membership values('id104','pw1','도윤','1991-01-04','010-2023-1114','address_test');
 insert into membership values('id105','pw1','지민','1991-01-05','010-2023-1115','address_test');
 insert into membership values('id106','pw1','채원','1991-01-06','010-2023-1116','address_test');
 insert into membership values('id107','pw1','지윤','1991-01-07','010-2023-1117','address_test');
 insert into membership values('id108','pw1','은서','1991-01-08','010-2023-1118','address_test');
 insert into membership values('id109','pw1','준서','1991-01-09','010-2023-1119','address_test');
 insert into membership values('id110','pw1','수아','1991-01-10','010-2023-1110','address_test');
    

create table comments(
      commentNum number constraint comments_CN_PK primary key,
      num number constraint comments_NUM_FK references board (num) on delete cascade,
      writer varchar2(200),
      contents varchar2(4000),
      regdate date
);



select * from board;

commit work;



