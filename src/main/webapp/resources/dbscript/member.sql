-- MEMBER_CODE
ALTER TABLE MEMBER_CODE
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_MEMBER_CODE;

/* 회원 분류 */
DROP TABLE MEMBER_CODE 
	CASCADE CONSTRAINTS;

/* 회원 분류 */
CREATE TABLE MEMBER_CODE (
	M_NUM NUMBER NOT NULL, /* 회원 분류 번호 */
	M_TYPE VARCHAR2(12) NOT NULL /* 회원 구분 타입 */
);

COMMENT ON TABLE MEMBER_CODE IS '회원 분류';
COMMENT ON COLUMN MEMBER_CODE.M_NUM IS '회원 분류 번호';
COMMENT ON COLUMN MEMBER_CODE.M_TYPE IS '회원 구분 타입';

CREATE UNIQUE INDEX PK_MEMBER_CODE
	ON MEMBER_CODE (
		M_NUM ASC
	);

ALTER TABLE MEMBER_CODE
	ADD
		CONSTRAINT PK_MEMBER_CODE
		PRIMARY KEY (
			M_NUM
		);
		
-- MEMBER
ALTER TABLE MEMBER
	DROP
		CONSTRAINT FK_MEMBER_CODE_TO_MEMBER
		CASCADE;

ALTER TABLE MEMBER
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_MEMBER;

/* 회원 및 관리자 */
DROP TABLE MEMBER 
	CASCADE CONSTRAINTS;

/* 회원 및 관리자 */
CREATE TABLE MEMBER (
	M_ID VARCHAR2(50) NOT NULL, /* 회원 아이디 */
	M_NUM NUMBER NOT NULL, /* 회원 분류 번호 */
	M_PW VARCHAR2(50) NOT NULL, /* 회원 비밀번호 */
	M_NAME VARCHAR2(50) NOT NULL, /* 회원 이름 */
	M_EMAIL VARCHAR2(100), /* 회원 이메일 */
	M_POST VARCHAR2(10), /* 회원 우편번호 */
	M_BASIC_ADDR VARCHAR2(1000), /* 회원 기본주소 */
	M_DETAIL_ADDR VARCHAR2(1000), /* 회원 상세주소 */
	M_CP VARCHAR2(50), /* 회원 전화번호 */
	M_PHOTO VARCHAR2(2000), /* 회원 사진 */
	M_BALCKCNT NUMBER, /* 신고당한 횟수 */
	M_STATUS NUMBER /* 회원의 현재 블록 상태 */
);

COMMENT ON TABLE MEMBER IS '회원 및 관리자';

COMMENT ON COLUMN MEMBER.M_ID IS '회원 아이디';

COMMENT ON COLUMN MEMBER.M_NUM IS '회원 분류 번호';

COMMENT ON COLUMN MEMBER.M_PW IS '회원 비밀번호';

COMMENT ON COLUMN MEMBER.M_NAME IS '회원 이름';

COMMENT ON COLUMN MEMBER.M_EMAIL IS '회원 이메일';

COMMENT ON COLUMN MEMBER.M_POST IS '회원 우편번호';

COMMENT ON COLUMN MEMBER.M_BASIC_ADDR IS '회원 기본주소';

COMMENT ON COLUMN MEMBER.M_DETAIL_ADDR IS '회원 상세주소';

COMMENT ON COLUMN MEMBER.M_CP IS '회원 전화번호';

COMMENT ON COLUMN MEMBER.M_PHOTO IS '회원 사진';

COMMENT ON COLUMN MEMBER.M_BALCKCNT IS '신고당한 횟수';

COMMENT ON COLUMN MEMBER.M_STATUS IS '회원의 현재 블록 상태';

CREATE UNIQUE INDEX PK_MEMBER
	ON MEMBER (
		M_ID ASC
	);

ALTER TABLE MEMBER
	ADD
		CONSTRAINT PK_MEMBER
		PRIMARY KEY (
			M_ID
		);

ALTER TABLE MEMBER
	ADD
		CONSTRAINT FK_MEMBER_CODE_TO_MEMBER
		FOREIGN KEY (
			M_NUM
		)
		REFERENCES MEMBER_CODE (
			M_NUM
		);
		
		
-- MEMBER_BIZ
		
		ALTER TABLE MEMBER_BIZ
	DROP
		CONSTRAINT FK_MEMBER_CODE_TO_MEMBER_BIZ
		CASCADE;

ALTER TABLE MEMBER_BIZ
	DROP
		CONSTRAINT FK_MEMBER_TO_MEMBER_BIZ
		CASCADE;

/* 사업지 회원 */
DROP TABLE MEMBER_BIZ 
	CASCADE CONSTRAINTS;

/* 사업지 회원 */
CREATE TABLE MEMBER_BIZ (
	M_ID VARCHAR2(50) NOT NULL, /* 회원 아이디 */
	M_NUM NUMBER NOT NULL, /* 회원 분류 번호 */
	BIZ_NAME VARCHAR2(50) NOT NULL, /* 사업장 이름 */
	BIZ_PN VARCHAR2(20) NOT NULL, /* 사업장 전화번호 */
	BIZ_NUM VARCHAR2(50) NOT NULL, /* 사업자 등록번호 */
	BIZ_DELIVERY NUMBER, /* 배송비 */
	MASTER_NAME VARCHAR2(50) NOT NULL, /* 담당자 이름 */
	BIZ_DELIVERY_YN VARCHAR2(2) NOT NULL, /* 배송가능 여부 */
	BIZ_CUSTOM_YN VARCHAR2(2) NOT NULL /* 케이크 커스텀 가능여부 */
);

COMMENT ON TABLE MEMBER_BIZ IS '사업지 회원';

COMMENT ON COLUMN MEMBER_BIZ.M_ID IS '회원 아이디';

COMMENT ON COLUMN MEMBER_BIZ.M_NUM IS '회원 분류 번호';

COMMENT ON COLUMN MEMBER_BIZ.BIZ_NAME IS '사업장 이름';

COMMENT ON COLUMN MEMBER_BIZ.BIZ_PN IS '사업장 전화번호';

COMMENT ON COLUMN MEMBER_BIZ.BIZ_NUM IS '사업자 등록번호';

COMMENT ON COLUMN MEMBER_BIZ.BIZ_DELIVERY IS '배송비';

COMMENT ON COLUMN MEMBER_BIZ.MASTER_NAME IS '담당자 이름';

COMMENT ON COLUMN MEMBER_BIZ.BIZ_DELIVERY_YN IS '배송가능 여부';

COMMENT ON COLUMN MEMBER_BIZ.BIZ_CUSTOM_YN IS '케이크 커스텀 가능여부';

ALTER TABLE MEMBER_BIZ
	ADD
		CONSTRAINT FK_MEMBER_CODE_TO_MEMBER_BIZ
		FOREIGN KEY (
			M_NUM
		)
		REFERENCES MEMBER_CODE (
			M_NUM
		);

ALTER TABLE MEMBER_BIZ
	ADD
		CONSTRAINT FK_MEMBER_TO_MEMBER_BIZ
		FOREIGN KEY (
			M_ID
		)
		REFERENCES MEMBER (
			M_ID
		);