DROP Table user;

CREATE TABLE USER
(
   USER_ID               VARCHAR(100) NOT NULL PRIMARY KEY,
   USER_PASSWORD         VARCHAR(100) NOT NULL,
   USER_TEL              VARCHAR(100) NOT NULL,
   USER_ADDRESS          VARCHAR(100) NOT NULL,
   USER_EMAIL            VARCHAR(100) NOT NULL,
   USER_IMAGE            VARCHAR(100) NULL,
   USER_ENABLED          VARCHAR(100) NOT NULL DEFAULT '1',
   USER_CREATED_AT       DATETIME NOT NULL DEFAULT NOW()
);

drop table AUTHORITIES;

create table AUTHORITIES(
   USERNAME VARCHAR(100) NOT NULL,
   AUTHORITY VARCHAR(100) NOT NULL,
   CONSTRAINT FK_AUTHORITIES foreign key(USERNAME) references USER(USER_ID),
   CONSTRAINT USER_AUTHORITIES primary key(USERNAME,AUTHORITY)
   );



/*CREATE TABLE USER
(
	USER_ID               VARCHAR(100) NOT NULL PRIMARY KEY,
	USER_PASSWORD         VARCHAR(100) NOT NULL,
	USER_TEL              VARCHAR(100) NOT NULL,
	USER_ADDRESS          VARCHAR(100)  not NULL,
	USER_EMAIL            VARCHAR(100) NOT NULL,
	USER_IMAGE            VARCHAR(100) NULL,
	USER_TYPE             VARCHAR(100)  not NULL DEFAULT 'MEMBER',
	USER_CREATED_AT       DATETIME NULL DEFAULT NOW()
); */


/*DROP TABLE AUTHORITIES; 
:권한테이블은 현재 감자마켓 사용자가 복수의 권한을 가지지 않고 사용자/ 관리자 / 고스트 이렇게 1개의 역할만을 가지므로 
1정규화가 필요없으므로 테이블을 분리할 필요가 없어서 생성하지 않을 것임


create table AUTHORITIES
(
   AUTHORITIES_USERNAME VARCHAR(100) NOT NULL,
   AUTHORITIY VARCHAR(100) NOT NULL,
   CONSTRAINT FK_AUTHORITIES foreign key(AUTHORITIES_USERNAME) references USER(USER_ID),
   CONSTRAINT USER_AUTHORITIES primary key(AUTHORITIES_USERNAME,AUTHORITIY)

   )*/


-----테스트 위한 임의 유저생성 (id체크)--
insert into user (USER_ID,USER_PASSWORD,USER_TEL,USER_ADDRESS,USER_EMAIl)
VALUES ('security10','1234','01012341234','여주','a@naver.com');

insert into AUTHORITIES(USERNAME,AUTHORITIY) values ('spring1','User');

select * from USER;
select* from AUTHORITIES;

select us.USER_ID,us.USER_PASSWORD,us.USER_TEL,us.USER_ADDRESS,us.USER_EMAIL,Au.USERNAME,AUTHORITIY
from AUTHORITIES Au ,user us
where us.USER_ID=au.USERNAME

drop table AUTHORITIES;
select count(*) from user;



--아이디 중복체크
select count(*) from user where user_id='spring';

--회원 정보 수정 (전화번호, 이메일)
update USER
set USER_TEL=#{userTel},USER_EMAIL=#{userEmail} 
WHERE USER_ID=#{userId}

update USER
set USER_TEL=7777,USER_EMAIL=7777
WHERE USER_ID='security112'

select * from USER;
select*from ITEM;


--userTel=#{userTel},userEmail=#{userEmail}




