CREATE TABLE PRODUCT_BOARD
(
	P_NAME VARCHAR2(100)                                                                NOT NULL,
	P_PRICE VARCHAR2(100)                                                                 NOT NULL,
	P_IMG VARCHAR2(100)                                                                     NOT NULL,
	P_COUNT NUMBER(10)                                                                      NOT NULL,
	P_B_NUM NUMBER(10),
	P_B_MINI_TITLE VARCHAR2(100)                                               NOT NULL,
	P_B_CONTENT VARCHAR2(4000)                                               NOT NULL,
	P_B_LIKE NUMBER(10)                                        DEFAULT 0      NOT NULL ,
	P_B_READCNT NUMBER(10)                           DEFAULT 0      NOT NULL,
	P_B_YN VARCHAR2(2)                                                                        NOT NULL,
	P_B_WARN VARCHAR2(100)                                                          NOT NULL,
	P_B_TAG VARCHAR2(2000)                                                            NOT NULL,
	M_ID VARCHAR2(50)                                                                           NOT NULL,
	P_COUNT_LIMIT NUMBER(3)                          DEFAULT 0      NOT NULL,
    
    CONSTRAINT P_BOARD_PK_NUM PRIMARY KEY (P_B_NUM),
    CONSTRAINT P_BOARD_FK_ID FOREIGN KEY (M_ID) REFERENCES MEMBER(M_ID),
    
    CONSTRAINT P_BOARD_YN_CK CHECK(P_B_YN IN('Y','F'))
    
);


CREATE SEQUENCE SEQ_P_B_NUM 
START WITH 1
INCREMENT BY 1
NOMAXVALUE
NOCYCLE
NOCACHE
;


CREATE TABLE CUSTOM_BOARD
(
	C_B_NUM NUMBER(10),
	C_B_MINI_TITLE VARCHAR2(100)                                                           NOT NULL, 
	C_B_CONTENT VARCHAR2(4000)                                                           NOT NULL,
	C_B_LIKE NUMBER(10)                                                        DEFAULT 0  NOT NULL,
	C_B_READCNT NUMBER(10)                                           DEFAULT 0   NOT NULL,
	C_B_TAG VARCHAR2(2000)                                                                                ,
	C_B_WARN VARCHAR2(100)                                                                              ,
	C_B_NAME VARCHAR2(100)                                                                      NOT NULL,
	C_B_PRICE NUMBER(10)                                                                               NOT NULL,
	M_ID VARCHAR2(50)                                                                                       NOT NULL,
    
    CONSTRAINT C_BOARD_PK_NUM PRIMARY KEY (C_B_NUM),
    CONSTRAINT C_BOARD_FK_ID FOREIGN KEY (M_ID) REFERENCES MEMBER(M_ID)   
    
);

CREATE SEQUENCE SEQ_C_B_NUM
START WITH 1
INCREMENT BY 1
NOMAXVALUE
NOCYCLE
NOCACHE
;

CREATE TABLE HOME_QNA
(
	H_Q_NUM NUMBER(10),
	H_Q_CONTENT VARCHAR2(4000)                          NOT NULL,
	H_Q_TITLE VARCHAR2(500)                                       NOT NULL,
	H_Q_DATE DATE              DEFAULT  SYSDATE      NOT NULL,
	M_ID VARCHAR2(50)                                                       NOT NULL,
    H_Q_RE_REF NUMBER(10)                                           NOT NULL,
    H_Q_RE_LEV NUMBER                       DEFAULT 0     NOT NULL ,
    H_Q_RE_SEQ NUMBER                      DEFAULT 0     NOT NULL,
    
    CONSTRAINT H_Q_PK_NUM PRIMARY KEY(H_Q_NUM),
    CONSTRAINT H_Q_FK_ID FOREIGN KEY(M_ID) REFERENCES MEMBER(M_ID),
    CONSTRAINT H_Q_FK_RE_REF FOREIGN KEY(H_Q_RE_REF) REFERENCES HOME_QNA(H_Q_NUM)
);

CREATE SEQUENCE SEQ_H_Q_NUM 
START WITH 1
INCREMENT BY 1
NOMAXVALUE
NOCYCLE
NOCACHE
;

CREATE TABLE H_QNA_COM
(
	H_Q_C_NUM NUMBER(10),
	H_Q_NUM NUMBER(10)                                                                                  NOT NULL,
	H_Q_C_CONTENT VARCHAR2(4000)                                                     NOT NULL,
	H_Q_C_DATE DATE                                         DEFAULT SYSDATE       NOT NULL,
    H_Q_C_RE_REF NUMBER(10)                                                                       NOT NULL,
    H_Q_C_RE_LEV NUMBER                             DEFAULT 0                           NOT NULL,     
    H_Q_C_RE_SEQ NUMBER                            DEFAULT 0                           NOT NULL ,
    
    CONSTRAINT H_Q_C_PK_NUM PRIMARY KEY(H_Q_C_NUM),
    CONSTRAINT H_Q_C_FK_NUM FOREIGN KEY(H_Q_NUM) REFERENCES HOME_QNA(H_Q_NUM),
    CONSTRAINT H_Q_C_FK_RE_REF FOREIGN KEY(H_Q_C_RE_REF) REFERENCES H_QNA_COM(H_Q_C_NUM)
    
);

CREATE SEQUENCE SEQ_H_Q_C_NUM
START WITH 1
INCREMENT BY 1
NOMAXVALUE
NOCYCLE
NOCACHE
;




CREATE TABLE PRODUCT_QNA
(
	P_Q_NUM NUMBER(10),
	P_Q_CONTENT VARCHAR2(4000),
	P_B_NUM NUMBER(10),
	P_Q_DATE DATE,
	M_ID VARCHAR2(100)
)

CREATE TABLE P_QNA_COM
(
	P_Q_C_NUM NUMBER(10),
	P_Q_NUM NUMBER(10),
	P_Q_C_CONTENT VARCHAR2(4000),
	P_Q_C_DATE DATE
)

CREATE TABLE PRODUCT_REVIEW
(
	P_R_NUM NUMBER(10),
	P_B_NUM NUMBER(10),
	P_R_CONTENT VARCHAR2(4000),
	P_R_DATE DATE,
	M_ID VARCHAR2(50),
	P_R_LIKE NUMBER(5),
	P_R_BLACK NUMBER(1),
	P_R_FILE VARCHAR2(1000)
)

CREATE TABLE P_REVIEW_COM
(
	P_R_C_NUM NUMBER(10),
	P_R_NUM NUMBER(10),
	P_R_C_CONTENT VARCHAR2(4000),
	P_R_C_DATE DATE
)