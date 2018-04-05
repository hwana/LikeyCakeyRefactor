Insert into MEMBER_CODE (M_NUM,M_TYPE) values (1,'ADMIN');
Insert into MEMBER_CODE (M_NUM,M_TYPE) values (2,'NORMAL');
Insert into MEMBER_CODE (M_NUM,M_TYPE) values (3,'BIZ');

Insert into MEMBER (M_ID,M_NUM,M_PW,M_NAME,M_EMAIL,M_POST,M_BASIC_ADDR,M_DETAIL_ADDR,M_CP,M_PHOTO,M_BLACKCNT,M_STATUS) 
values ('tous',3,'Enfpwbfm123^^','김뚜레','yy_pp@naver.com','123-123','서울 강남구 봉은사로','71길 49 뚜레쥬르 삼성힐스테이트점','010-1234-1234','tousImg',0,0);

Insert into MEMBER_BIZ (M_ID,M_NUM,BIZ_NAME,BIZ_PN,BIZ_NUM,BIZ_DELIVERY,MASTER_NAME,BIZ_DELIVERY_YN,BIZ_CUSTOM_YN) 
values ('tous',3,'뚜레쥬르','02-540-6999','312-81-42519',3000,'김담당','Y','Y');

