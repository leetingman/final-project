/* 유저 테이블 생성 */
CREATE TABLE USER
(
	USER_ID               VARCHAR(100) NOT NULL PRIMARY KEY,
	USER_TEL              VARCHAR(100) NOT NULL,
	USER_ADDRESS          VARCHAR(100) NOT NULL,
	USER_CREATED_AT       DATETIME NOT NULL DEFAULT NOW(),
	USER_IMAGE            VARCHAR(100) NULL,
	USER_TYPE             VARCHAR(100) NOT NULL DEFAULT 'MEMBER',
	USER_PASSWORD         VARCHAR(100) NOT NULL,
	USER_EMAIL            VARCHAR(100) NOT NULL
)
;


/* 카테고리 테이블*/
CREATE TABLE CATEGORY
(
	CATEGORY_ID           INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	CATEGORY_NAME         VARCHAR(100) NOT NULL
)
;

/* 상품 테이블 생성 */
CREATE TABLE ITEM
(
	ITEM_ID               INTEGER NOT NULL PRIMARY KEY,
	USER_ID               VARCHAR(100) NOT NULL,
	LOCATION_ID           INTEGER NOT NULL,
	CATEGORY_ID           INTEGER NOT NULL,
	ITEM_TITLE            VARCHAR(100) NOT NULL,
	ITEM_PRICE            INTEGER NOT NULL,
	ITEM_HIT              INTEGER NOT NULL,
	ITEM_CONTENT          LONGTEXT NOT NULL,
	ITEM_STATUS           VARCHAR(100) NOT NULL,
	ITEM_CREATED_AT       DATETIME NOT NULL DEFAULT NOW(),
	CONSTRAINT FK_ITEM_1 FOREIGN KEY (CATEGORY_ID) REFERENCES CATEGORY(CATEGORY_ID),
	CONSTRAINT FK_ITEM_2 FOREIGN KEY (USER_ID) REFERENCES USER(USER_ID)
)
;


/* 이미지 테이블 생성 */
CREATE TABLE IMAGE
(
	IMAGE_ID              INTEGER NOT NULL PRIMARY KEY,
	ITEM_ID               INTEGER NOT NULL,
	IMAGE_NAME            VARCHAR(100)  NULL,
	CONSTRAINT FK_IMAGE_1 FOREIGN KEY (ITEM_ID) REFERENCES ITEM(ITEM_ID)
)
;

/* 자주묻는 질문 게시판 테이블 생성*/
CREATE TABLE FAQ
(
	FAQ_ID                INTEGER NOT NULL PRIMARY KEY,
	FAQ_TITLE             VARCHAR(100) NOT NULL,
	FAQ_CONTENT           LONGTEXT NOT NULL,
	USER_ID               VARCHAR(100) NOT NULL,
	CONSTRAINT FK_FAQ_1 FOREIGN KEY (USER_ID) REFERENCES USER(USER_ID)
)
;


/*채팅방 테이블 생성*/
CREATE TABLE CHATROOM
(
	CHATROOM_ID           INTEGER NOT NULL PRIMARY KEY,
	CHATROOM_SENDER_ID    VARCHAR(100) NOT NULL,
	CHATROOM_RECIVER_ID   VARCHAR(100) NOT NULL,
	CHATROOM_UPDATE_AT    DATETIME NOT NULL,
	ITEM_ID               INTEGER NOT NULL
)
;


/* 채팅 테이블 생성*/
CREATE TABLE CHATCONENT
(
	CHATCONTENT_ID        VARCHAR(100) NOT NULL PRIMARY KEY,
	CHATCONTENT_CONTENT   LONGBLOB NOT NULL,
	CHATROOM_ID           INTEGER NOT NULL
)
;



/*FOREIGN KEY 생성*/ 
ALTER TABLE CHATCONENT
	ADD FOREIGN KEY R_12 (CHATROOM_ID) REFERENCES CHATROOM(CHATROOM_ID)
;


ALTER TABLE CHATROOM
	ADD FOREIGN KEY R_18 (ITEM_ID) REFERENCES ITEM(ITEM_ID)
;

DROP TABLE USER;  
DROP TABLE CATEGORY;  
DROP TABLE ITEM;  
DROP TABLE IMAGE;  





