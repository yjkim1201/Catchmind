-------------------------------------- TABLE_DELETE --------------------------------------
DROP TABLE TB_MEMBER CASCADE CONSTRAINTS;
DROP TABLE TB_CHAT_REVIEW CASCADE CONSTRAINTS;
DROP TABLE TB_CHAT CASCADE CONSTRAINTS;
DROP TABLE TB_BLOCK CASCADE CONSTRAINTS;
DROP TABLE CHAT_REPORT CASCADE CONSTRAINTS;
DROP TABLE TB_FOLLOW CASCADE CONSTRAINTS;
DROP TABLE TB_QA CASCADE CONSTRAINTS;
DROP TABLE TB_POST CASCADE CONSTRAINTS;
DROP TABLE TB_NOTICE CASCADE CONSTRAINTS;
DROP TABLE TB_CATCH CASCADE CONSTRAINTS;
DROP TABLE TB_LIKE CASCADE CONSTRAINTS;
DROP TABLE TB_REPORT CASCADE CONSTRAINTS;
DROP TABLE TB_REPLY CASCADE CONSTRAINTS;
DROP TABLE TB_ATTACHMENT CASCADE CONSTRAINTS;
DROP TABLE TB_FAQ CASCADE CONSTRAINTS;
DROP TABLE MBTI CASCADE CONSTRAINTS;
DROP TABLE CHATCLAIM CASCADE CONSTRAINTS;
DROP TABLE CHATROOMS CASCADE CONSTRAINTS;

DROP SEQUENCE SEQ_MNO; -- TB_MEMBER
DROP SEQUENCE SEQ_QNO; -- TB_QA
DROP SEQUENCE SEQ_CNO; -- TB_CATCH
DROP SEQUENCE SEQ_NNO; -- TB_NOTICE
DROP SEQUENCE SEQ_PNO; -- TB_POST
DROP SEQUENCE SEQ_ANO; -- TB_ATTACHMENT
DROP SEQUENCE SEQ_RNO; -- TB_REPLY
DROP SEQUENCE SEQ_MBTI; -- TB_MBTI
DROP SEQUENCE SEQ_FNO; -- TB_FAQ
DROP SEQUENCE SEQ_CRNO; -- CHATROOMS
-------------------------------------- SEQUENCE_CREATE --------------------------------------
CREATE SEQUENCE SEQ_MNO NOCACHE; -- TB_MEMBER
CREATE SEQUENCE SEQ_QNO NOCACHE; -- TB_QA
CREATE SEQUENCE SEQ_CNO NOCACHE; -- TB_CATCH
CREATE SEQUENCE SEQ_NNO NOCACHE; -- TB_NOTICE
CREATE SEQUENCE SEQ_PNO NOCACHE; -- TB_POST
CREATE SEQUENCE SEQ_ANO NOCACHE; -- TB_ATTACHMENT
CREATE SEQUENCE SEQ_RNO NOCACHE; -- TB_REPLY
CREATE SEQUENCE SEQ_MBTI NOCACHE; -- TB_MBTI
CREATE SEQUENCE SEQ_FNO NOCACHE; -- TB_FAQ
CREATE SEQUENCE SEQ_CRNO NOCACHE; -- CHATROOMS
-------------------------------------- TABLE_CREATE --------------------------------------
-------------------------------------- TB_MEMBER --------------------------------------
CREATE TABLE TB_MEMBER(
   USER_NO NUMBER,
   USER_ID VARCHAR2(15) ,
   USER_PWD VARCHAR2(20),
   EMAIL VARCHAR2(50) , -- VARCHAR2(50)으로 사이즈늘림(07/15수빈)
   NICKNAME VARCHAR2(50) , -- VARCHAR2(50)으로 사이즈늘림(07/15수빈)
   USER_NAME VARCHAR2(50),-- VARCHAR2(50)으로 사이즈늘림(07/15수빈)
   BIRTHDAY VARCHAR2(30), -- 날짜형식 시분초로 변경하면서 자료형 수정(07/15수빈)
   MBTI VARCHAR2(4),
   PHONE VARCHAR2(20) ,
   HEIGHT NUMBER,
   GENDER VARCHAR2(1),
   PROFILE VARCHAR2(100),-- VARCHAR2(100)으로 사이즈늘림(07/15수빈)
   RECENT_LOGIN DATE,
   RECENT_LOGOUT DATE,
   PARTNER NUMBER DEFAULT 0,
   STATUS NUMBER DEFAULT 0,
   PIC VARCHAR2(100),
   LONGITUDE NUMBER,
   LATITUDE NUMBER
);

Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'admin','1234','admin@kh.or.kr','관리자','관리자','1992-05-01','ISTJ','010-1111-1111',180,'M',null,to_date('2022-07-21 11:47:25','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:47:38','YYYY-MM-DD HH24:MI:SS'),0,0,null,0,0);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'user01','user01','hwkim51@naver.com','선글라스맨','김현우','1992-05-01','ENFP','010-4865-4861',174,'F','누구냐 넌?',to_date('2022-07-21 12:06:25','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 12:06:58','YYYY-MM-DD HH24:MI:SS'),3,0,'resources/picUploadFiles/2022072109353862112.png',126.934355775407,37.471829550861);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'stonery728','1235stonery%$#','stonery@google.com','갈대','한마음','1998-01-03','INFP','010-4168-9786',175,'F','알랴줘',to_date('2022-07-21 11:48:35','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:48:52','YYYY-MM-DD HH24:MI:SS'),2,0,null,0,0);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'vintagne6234','#@$%vintagne1235','vintagne@google.com','민머리원빈','선우혁','1999-03-01','ESTP','010-1865-0520',184,'M','길냥이',to_date('2022-07-21 11:49:29','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:49:38','YYYY-MM-DD HH24:MI:SS'),0,0,null,0,0);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'9909gnam','!!gnamajshd','gnam@google.com','방탄사랑해','이정아','1996-05-09','ESFJ','010-9850-7740',170,'F','방탄좋아함',to_date('2022-07-21 11:49:46','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:49:56','YYYY-MM-DD HH24:MI:SS'),0,0,null,0,0);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'12345','12345','chmes@google.com','너S2나','다사랑','1234-12-01','ISTJ','010-0081-4458',169,'F','이미 사랑해',to_date('2022-07-21 12:05:57','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 12:06:06','YYYY-MM-DD HH24:MI:SS'),0,0,null,0,0);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'collxbo','1234collxbo','collxbo@google.com','낮져밤져','이황철','1994-07-21','ISFJ','010-9753-03547',179,'M','너를 위해 져준다',to_date('2022-07-21 11:50:14','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:50:27','YYYY-MM-DD HH24:MI:SS'),0,0,null,0,0);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'disdean997','animdisdean','disdean@google.com','금사빠','최하늘','2001-05-04','ENTJ','010-7516-1325',166,'F','너에게 빠져들 준비 완료',to_date('2022-07-21 11:50:32','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:50:45','YYYY-MM-DD HH24:MI:SS'),0,0,null,0,0);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'too146sequen','check!toosequen','toosequen@google.com','보면뿅감','이도현','1999-12-03','ESFP','010-7584-7538',189,'M','반하지마 피곤해',to_date('2022-07-21 11:50:50','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:50:59','YYYY-MM-DD HH24:MI:SS'),0,0,null,0,0);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'1225fontbid','font@@bid','fontbid@google.com','너의환승지','안효섭','1990-04-02','ENTJ','010-3215-4537',189,'M','나에게로 와요 그대',to_date('2022-07-21 11:51:05','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:51:17','YYYY-MM-DD HH24:MI:SS'),0,0,null,0,0);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'live2day00','dhsmfdmftksek123!','live2day08@google.com','오늘만산다','김기범','2002-06-03','INTP','010-8369-7835',177,'M','내일 죽어도 된다',to_date('2022-07-21 11:51:24','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:51:42','YYYY-MM-DD HH24:MI:SS'),0,0,null,0,0);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh001','1234','A1@gmail.com','너에게바람','김도윤','1996-11-09','ISTJ','010-6846-1324',156,'M','나에게 바람',to_date('2022-07-21 11:49:44','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:49:49','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072019521537173 (1).jpg',126.216955725123,37.5987066027035);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh002','1234','A2@gmail.com','하기스','황서준','1999-04-21','ISFJ','010-3154-8465',157,'M','매직팬티',to_date('2022-07-21 11:49:53','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 12:03:21','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072019521537173 (2).jpg',127.352675622943,36.0639337507691);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh003','1234','A3@gmail.com','미친야생마','최하준','1999-01-11','INFJ','010-1561-1541',158,'M','밤의 야생마',to_date('2022-07-21 11:51:40','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:51:44','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072019521537173 (3).jpg',127.600184077585,35.6687114510137);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh004','1234','A4@gmail.com','현란한코파기','조은우','1999-09-05','INTJ','010-8765-8467',159,'M','코파기달인26년차',to_date('2022-07-21 11:51:47','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:51:59','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072019521537173 (4).jpg',126.01506719003,36.4291911490846);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh005','1234','A5@gmail.com','노른계란자','차시우','1998-02-25','ISTP','010-1354-1235',160,'M','계란같은너',to_date('2022-07-21 11:52:21','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:52:27','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072019521537173 (5).jpg',127.100332321514,37.1487362269485);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh006','1234','A6@gmail.com','눈감고달림','최이준','1997-07-27','ISFP','010-3245-8784',161,'M','눈감아도 너에게로',to_date('2022-07-21 11:52:34','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:52:52','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072019521537173 (6).jpg',127.826487635204,35.786034782055);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh007','1234','A7@gmail.com','막자장','김지호','1999-03-01','INTF','010-8765-5431',162,'M','막자장',to_date('2022-07-21 12:03:30','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 12:03:42','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072019521537173 (7).jpg',126.603241242624,35.5202615896879);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh008','1234','A8@gmail.com','짱구아빠발냄새','이예준','1996-01-18','INTP','010-4565-5477',163,'M','짱구엄마발냄새',to_date('2022-07-21 11:55:14','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:55:19','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072019521537173 (8).jpg',126.446956066214,36.4905293215233);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh009','1234','A9@gmail.com','카트52년차','이유준','1996-05-07','ESTP','010-0000-0000',164,'M','카트같이할사람?',to_date('2022-07-21 11:53:13','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:55:09','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072019521537173 (9).jpg',126.705766005748,35.0296453188559);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh010','1234','A10@gmail.com','파송송계란탁','이건우','1991-10-10','ESFP','010-0000-0121',165,'M','계란송송파',to_date('2022-07-21 11:55:27','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:55:42','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072019521537173 (10).jpg',127.741691050632,36.1203608990258);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh011','1234','A11@gmail.com','콧구멍세개','도민준','1992-11-11','ENFP','010-5846-1531',166,'M','콧구멍만세개일까?',to_date('2022-07-21 11:55:47','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:56:00','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072019521537173 (11).jpg',126.520458882816,36.4250251565057);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh012','1234','A12@gmail.com','똥맛카페','도서진','1993-11-11','ENTP','010-1354-0154',167,'M','카페맛똥',to_date('2022-07-21 11:58:00','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:58:02','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072019521537173 (12).jpg',127.889431817142,37.0793097942641);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh013','1234','A13@gmail.com','니비듬나물','도시윤','1993-11-11','ESTJ','010-1564-6541',168,'M','나비듬나물',to_date('2022-07-21 11:56:42','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:57:05','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072019521537173 (13).jpg',127.689707378909,35.0184038114793);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh014','1234','A14@gmail.com','내카트페라리','도윤우','1994-11-11','ESFJ','010-0148-5405',169,'M','모닝타고 다님',to_date('2022-07-21 11:57:36','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:57:54','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072019521537173 (14).jpg',126.88762386893,36.1171496878336);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh015','1234','A15@gmail.com','음주운전','도지후','1998-11-11','ENFJ','010-0564-0489',170,'M','너에게 음주운전',to_date('2022-07-21 11:57:11','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:57:25','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072019521537173 (15).jpg',126.644942517715,35.4216294846047);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh016','1234','A16@gmail.com','음주가무','도우주','1991-11-11','ENTJ','010-6554-0089',171,'M','목소리 도문진',to_date('2022-07-21 11:58:08','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:58:21','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072019521537173 (16).jpg',126.115921778394,37.5593318885116);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh017','1234','A17@gmail.com','현란한뽀로로','도지안','1996-11-11','ISTJ','010-5465-4060',172,'M','뽀시래기',to_date('2022-07-21 11:58:26','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:58:37','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072019521537173 (17).jpg',126.809881981411,35.4250213622894);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh018','1234','A18@gmail.com','왈왈크르릉','도현우','1993-11-11','ISFJ','010-8904-0465',173,'M','멍멍 왈왈 크르릉',to_date('2022-07-21 11:59:24','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:59:27','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072019521537173 (18).jpg',127.075309962846,35.5438185263537);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh019','1234','A19@gmail.com','닮은살걀','김로운','1995-11-11','INFJ','010-0645-5604',174,'M','샮은댤걀',to_date('2022-07-21 11:59:01','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:59:16','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072019521537173 (19).jpg',127.966140528806,37.6488833731677);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh020','1234','A20@gmail.com','돈들어손내놔','김윤우','1997-11-11','INTJ','010-0894-4687',175,'M','나는야 거지',to_date('2022-07-21 11:59:33','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:59:43','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072019521537173 (20).jpg',126.204102374764,36.1537413582925);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh021','1234','A21@gmail.com','아무생강캐도난마늘','김시윤','1999-11-11','ISTP','010-8970-4048',176,'M','히히히히',to_date('2022-07-21 11:59:48','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:59:58','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072019521537173 (21).jpg',127.736563741977,35.0451918295063);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh022','1234','A22@gmail.com','아프리카청춘이다','김서진','1999-11-11','ISFP','010-8940-4650',177,'M','사랑이라 청춘이다',to_date('2022-07-21 12:00:06','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 12:00:14','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072019521537173 (22).jpg',126.527311450893,35.2911611107719);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh023','1234','A23@gmail.com','벼랑위의당뇨','김우진','1994-11-11','INTF','010-6540-7560',178,'M','벼랑위의포로',to_date('2022-07-21 12:00:20','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 12:00:30','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072019521537173 (23).jpg',126.474997909702,36.5623000687806);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh024','1234','A24@gmail.com','니이모를찾아서','김준우','1998-03-08','INTP','010-6987-0460',179,'M','니이모를찾아서',to_date('2022-07-21 12:03:50','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 12:03:58','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072019521537173 (24).jpg',127.888224257167,36.5523782138771);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh025','1234','A25@gmail.com','거져줄게잘사가','이도하','1994-11-11','ESTP','010-6507-8980',180,'M','잘살아',to_date('2022-07-21 12:00:37','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 12:00:47','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072019521537173 (25).jpg',126.035585725077,35.6079513543963);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh026','1234','A26@gmail.com','오즈의맙소사','이서우','1997-11-11','ESFP','010-8040-5406',181,'M','엘리스',to_date('2022-07-21 12:01:08','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 12:01:10','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072019521537173 (26).jpg',126.524542279568,36.8786775205998);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh027','1234','A27@gmail.com','피부암통키','이든','1995-11-11','ENFP','010-9870-0165',182,'M','카트만두',to_date('2022-07-21 12:01:16','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 12:01:32','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072019521537173 (27).jpg',126.860754766993,35.9624437413592);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh028','1234','A28@gmail.com','오드리될뻔','이준서','1994-11-11','ENTP','010-6879-4654',183,'M','핸리요한슨',to_date('2022-07-21 12:01:36','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 12:01:44','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072019521537173 (28).jpg',127.610392066796,35.0216740197448);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh029','1234','A29@gmail.com','짱구는옷말려','이지한','2001-12-01','ESTJ','010-8974-6513',184,'M','아따맘마',to_date('2022-07-21 12:04:04','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 12:04:12','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072019521537173 (29).jpg',126.520195456781,37.1222642309156);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh030','1234','A30@gmail.com','명란젓코난','이주안','1992-11-11','ESFJ','010-6546-5864',185,'M','명란젓코파기',to_date('2022-07-21 11:54:26','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:55:03','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072019521537173 (30).jpg',127.736329394352,37.851938943771);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh031','1234','A31@gmail.com','엔돌핀소녀','이시후','1996-03-01','ENFJ','010-6817-6540',186,'M','주님',to_date('2022-07-21 11:55:13','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:55:28','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072019521537173 (31).jpg',126.731792868576,36.0322227901569);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh032','1234','A32@gmail.com','슈퍼그냥죠','김지안','1997-08-12','ENTJ','010-1324-8654',187,'F','슈퍼매직',to_date('2022-07-21 11:55:37','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:56:56','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/202207201955464654 (1).jpg',126.608903600003,35.3735741911279);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh033','1234','A33@gmail.com','각그랜저','최하윤','1992-06-21','ISTJ','010-7684-1325',188,'F','홈플러스카트라이더',to_date('2022-07-21 12:04:17','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 12:04:25','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/202207201955464654 (2).jpg',126.268333243218,35.3029857253063);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh034','1234','A34@gmail.com','천공의성라이타','최서아','1988-11-02','ISFJ','010-8794-6545',189,'F','앤젤',to_date('2022-07-21 11:57:09','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:57:27','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/202207201955464654 (3).jpg',127.014073355491,35.3414724251722);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh035','1234','A35@gmail.com','도발적인궁뎅이','최하운','1986-05-05','INFJ','010-9988-1675',190,'F','섹도시발',to_date('2022-07-21 11:57:34','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:58:00','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/202207201955464654 (4).jpg',126.7661136999,35.9639438410135);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh036','1234','A36@gmail.com','대기업회장딸의친구','최서윤','1992-12-01','INTJ','010-6848-6512',191,'F','궁금하지?',to_date('2022-07-21 11:58:09','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:58:26','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/202207201955464654 (5).jpg',126.299960082135,35.0211405661237);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh037','1234','A37@gmail.com','닥쳐슬럼프','최하인','1995-06-15','ISTP','010-3215-8765',157,'F','그만 좋아해',to_date('2022-07-21 11:58:57','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:59:03','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/202207201955464654 (6).jpg',127.435060966545,36.6885280957474);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh038','1234','A38@gmail.com','엄마겟돈','최지우','1999-11-11','ISFP','010-0846-4890',185,'F','후후후후',to_date('2022-07-21 11:59:10','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:59:28','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/202207201955464654 (7).jpg',126.900879355632,37.1819409745521);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh039','1234','A39@gmail.com','맨날기어솔리드','김지아','1987-09-25','INTF','010-3540-1560',144,'F','브레이크',to_date('2022-07-21 11:59:36','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:59:51','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/202207201955464654 (8).jpg',126.586816206562,37.1932346462308);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh040','1234','A40@gmail.com','참깨빵위에너','이시아','1991-05-29','INTP','010-6575-1568',145,'F','맥도날드파',to_date('2022-07-21 11:59:57','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 12:00:16','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/202207201955464654 (9).jpg',126.334907549035,37.4588088329603);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh041','1234','A41@gmail.com','봉구스박보검','이지안','1989-12-12','ESTP','010-9845-0564',146,'F','보로보로봉봉',to_date('2022-07-21 12:00:23','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 12:00:40','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/202207201955464654 (10).jpg',126.755620242542,35.7188020976651);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh042','1234','A42@gmail.com','태정태세문단속잘해라','이서아','1999-11-27','ESFP','010-6547-6513',147,'F','사랑해요 이순신',to_date('2022-07-21 12:00:45','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 12:00:57','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/202207201955464654 (11).jpg',126.963174388915,35.1179359796323);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh043','1234','A43@gmail.com','구교민','이윤서','1993-07-11','ENFP','010-6598-0454',148,'F','사르르 녹아줘',to_date('2022-07-21 12:01:08','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 12:01:22','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/202207201955464654 (12).jpg',127.19940769902,35.7828865501086);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh044','1234','A44@gmail.com','난앓아요','이유나','1985-11-09','ENTP','010-1112-1531',149,'F','울었다',to_date('2022-07-21 12:01:27','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 12:01:44','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/202207201955464654 (13).jpg',127.981356888376,35.4863947798115);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh045','1234','A45@gmail.com','외않됌','이예린','2000-12-01','ESTJ','010-1881-7711',150,'F','면~접',to_date('2022-07-21 12:04:32','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 12:04:37','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/202207201955464654 (14).jpg',126.206122039326,37.1544689637425);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh046','1234','A46@gmail.com','세일러묵','이아윤','1999-11-02','ESFJ','010-2222-3333',151,'F','한걸음 더',to_date('2022-07-21 11:56:19','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:56:29','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/202207201955464654 (15).jpg',127.370015927255,35.8150281400847);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh047','1234','A47@gmail.com','카드값줘체리','이윤서','1999-10-23','ENFJ','010-6333-1154',152,'F','그린벨트같은 사람',to_date('2022-07-21 11:56:04','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:56:13','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/202207201955464654 (16).jpg',126.498504291231,37.357065641505);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh048','1234','A48@gmail.com','순대렐라','김서현','1988-04-17','ENTJ','010-5466-1115',153,'F','잠만보',to_date('2022-07-21 11:55:47','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:56:00','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/202207201955464654 (17).jpg',127.693183250871,37.2218586893964);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh049','1234','A49@gmail.com','니여친','김소율','1989-05-03','INTJ','010-5222-5568',191,'F','울보',to_date('2022-07-21 11:54:57','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:55:06','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/202207201955464654 (18).jpg',126.479985917003,35.3982455729282);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh050','1234','A50@gmail.com','디카프리오','김채원','1996-04-02','ISTP','010-3215-1231',157,'F','용감해진사람',to_date('2022-07-21 11:55:19','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:55:29','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/202207201955464654 (19).jpg',126.816426647167,37.0934345183275);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh051','1234','A51@gmail.com','아이언맨','김다운','1997-03-01','ISFP','010-6546-9999',185,'F','무한반복',to_date('2022-07-21 11:54:39','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:54:48','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/202207201955464654 (20).jpg',127.842261968411,36.6459558445578);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh052','1234','A52@gmail.com','피카츄','김아린','1998-11-29','INTF','010-9985-5123',144,'F','일하기 싫냐',to_date('2022-07-21 11:54:19','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:54:32','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/202207201955464654 (21).jpg',126.290865099482,36.4102390797372);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh053','1234','A53@gmail.com','쿵쿵따','김시아','1990-12-01','INTP','010-6566-5646',145,'F','뭘봐',to_date('2022-07-21 11:53:55','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:54:05','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/202207201955464654 (22).jpg',127.560369261825,35.1671463172558);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh054','1234','A54@gmail.com','쿵따리샤샤','김아윤','1998-08-21','ESTP','010-6550-3355',146,'F','네... 넹....',to_date('2022-07-21 11:53:42','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:53:50','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/202207201955464654 (23).jpg',126.004414053699,37.7234440871258);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh055','1234','A55@gmail.com','프로도','김서우','1991-03-07','ESFP','010-3357-9978',147,'F','왜이런걸까요',to_date('2022-07-21 11:53:28','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:53:36','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/202207201955464654 (24).jpg',127.954189595795,37.1811270810149);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh056','1234','A56@gmail.com','가쟈','김시은','1998-02-03','ENFP','010-6215-1657',148,'F','사랑해',to_date('2022-07-21 11:53:15','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:53:24','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/202207201955464654 (25).jpg',126.844328782174,37.7122965003955);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh057','1234','A57@gmail.com','예빈님','김다인','2001-03-02','ENTP','010-6351-3215',149,'F','한화최고',to_date('2022-07-21 11:53:01','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:53:09','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/202207201955464654 (26).jpg',127.30536107826,35.8108218056565);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh058','1234','A58@gmail.com','아아아아','김소윤','1996-01-31','ESTJ','010-3575-1155',150,'F','이상한 사람 아닌데',to_date('2022-07-21 11:52:34','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:52:47','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/202207201955464654 (27).jpg',127.867744002574,36.1153111422009);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh059','1234','A59@gmail.com','리사','김예서','1995-06-01','ESFJ','010-5656-5555',151,'F','치과의사',to_date('2022-07-21 11:52:19','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:52:30','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/202207201955464654 (28).jpg',127.469351995822,35.0991548557079);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh060','1234','A60@gmail.com','피큐큐','김채윤','1997-08-07','ENFJ','010-2546-7777',152,'F','빵',to_date('2022-07-21 11:52:01','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:52:15','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/202207201955464654 (29).jpg',127.217791505977,37.5591955965651);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'kh061','1234','A61@gmail.com','근황','김채아','1998-05-02','ENTJ','010-9999-7777',153,'F','아...',to_date('2022-07-21 11:51:47','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:51:56','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/202207201955464654 (30).jpg',126.860132047833,37.7559086884125);
Insert into TB_MEMBER values (SEQ_MNO.NEXTVAL,'moon99','moon99','moon99@gmail.com','큐티문','문정인','1999-10-07','ISTP','010-1999-1007',0,'F','안녕하세용',to_date('2022-07-21 11:33:17','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 11:44:15','YYYY-MM-DD HH24:MI:SS'),0,0,'resources/picUploadFiles/2022072110034581739.png',0,0);
COMMENT ON COLUMN TB_MEMBER.PARTNER IS '나와 커플인 회원의 회원번호';
COMMENT ON COLUMN TB_MEMBER.STATUS IS '나와 커플인 회원의 0:DEFAULT값, 1:탈퇴, 2:Q블랙';
COMMENT ON COLUMN TB_MEMBER.PIC IS '주소+파일명호';
COMMENT ON COLUMN TB_MEMBER.LONGITUDE IS '지도 API에서의 좌표';
COMMENT ON COLUMN TB_MEMBER.LATITUDE IS '지도 API에서의 위치정보';
-------------------------------------- TB_CHAT_REVIEW --------------------------------------
CREATE TABLE TB_CHAT_REVIEW (
    REVIEW_NO NUMBER,
    CHARMING NUMBER DEFAULT 0,
    KIND NUMBER DEFAULT 0,
    WARMHEARTED NUMBER DEFAULT 0,
    RAPID NUMBER DEFAULT 0,
    HAPPY NUMBER DEFAULT 0,
    LOVE NUMBER DEFAULT 0
);


Insert into TB_CHAT_REVIEW values (2,2,4,7,2,1,2);
Insert into TB_CHAT_REVIEW values (3,3,2,1,4,3,2);
Insert into TB_CHAT_REVIEW values (4,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (5,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (6,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (7,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (8,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (9,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (10,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (11,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (12,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (13,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (14,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (15,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (16,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (17,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (18,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (19,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (20,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (21,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (22,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (23,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (24,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (25,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (26,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (27,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (28,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (29,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (30,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (31,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (32,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (33,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (34,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (35,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (36,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (37,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (38,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (39,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (40,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (41,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (42,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (43,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (44,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (45,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (46,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (47,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (48,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (49,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (50,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (51,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (52,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (53,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (54,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (55,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (56,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (57,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (58,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (59,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (60,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (61,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (62,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (63,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (64,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (65,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (66,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (67,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (68,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (69,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (70,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (71,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (72,0,0,0,0,0,0);
Insert into TB_CHAT_REVIEW values (73,0,0,0,0,0,0);
-------------------------------------- TB_CHAT --------------------------------------
CREATE TABLE TB_CHAT (
    CHAT_CONTENT VARCHAR2(3000 BYTE), 
	CHAT_TIME VARCHAR2(200 BYTE), 
	USER_NO VARCHAR2(255 BYTE), 
	ROOM_NO NUMBER
);
-------------------------------------- TB_BLOCK --------------------------------------
CREATE TABLE TB_BLOCK (
    USER_NO NUMBER,
    BLOCKED_USER NUMBER
);
-------------------------------------- CHAT_REPORT --------------------------------------
CREATE TABLE CHAT_REPORT (
    USER_NO NUMBER, 
    REPORTED_FROM NUMBER, 
    REPORTED_FOR VARCHAR2(1000)
);
-------------------------------------- TB_FOLLOW --------------------------------------
CREATE TABLE TB_FOLLOW (
    FO_USER NUMBER,
    FOED_USER NUMBER
);
-------------------------------------- TB_QA --------------------------------------
CREATE TABLE TB_QA (
    QA_NO NUMBER,
    Q_TITLE VARCHAR2(255),
    Q_CONTENT VARCHAR2(2000), -- VARCHAR2 사이즈 변경 (유진)
    Q_DATE DATE DEFAULT SYSDATE,
    A_CONTENT VARCHAR2(1500) ,  -- VARCHAR2 사이즈 변경 (유진)
    Q_ANSWERDATE DATE  DEFAULT SYSDATE,
    Q_WRITER NUMBER,
    Q_ANSWERYN VARCHAR2(1) DEFAULT 'N' --답변여부 컬럼 추가(유진)
);

-------------------------------------- TB_POST --------------------------------------
CREATE TABLE TB_POST (
    POST_NO NUMBER,
    POST_TITLE VARCHAR2(100), -- 변경 약 30자 인범
    POST_CONTENT VARCHAR2(3000), -- 변경 1000자 인범
    POST_DATE DATE DEFAULT SYSDATE,
    POST_COUNT NUMBER DEFAULT 0 ,
    POST_STATUS VARCHAR2(1) DEFAULT 'Y', -- 변경 1자 인범
    POST_WRITER NUMBER
);
INSERT INTO TB_POST
VALUES(SEQ_PNO.NEXTVAL, '여기 카페 같이 가실 분 구함', '진짜 딱 카페만 들릴 카페탐방할 분 구해요!', SYSDATE, 273, 'Y', 6);
INSERT INTO TB_POST
VALUES(SEQ_PNO.NEXTVAL, '오늘 하루 다들 수고 해쭬', '마마 마쉬게 머궐~', SYSDATE, 273, 'Y', 3);
INSERT INTO TB_POST
VALUES(SEQ_PNO.NEXTVAL, '물 좋아진 듯', '한 동안 이상한 애들 많이 보였는데 관리하는 듯 일해라 관리자', SYSDATE, 273, 'Y', 4);
INSERT INTO TB_POST
VALUES(SEQ_PNO.NEXTVAL, '민초단 소리질러~~~!!!!', 'ㅈㄱㄴ', SYSDATE, 273, 'Y', 11);
INSERT INTO TB_POST
VALUES(SEQ_PNO.NEXTVAL, '다들 이런 경험있어???', '지하철에서 다른 사람 영화보는거 같이보다가 깜짝놀라서 흠칫했더니 옆사람이 슬쩍 내쪽으로 더 잘보이게 틀어줌 ㅠㅠㅠㅠㅠㅠ 그 후로 무서워서 안봤는데....', SYSDATE, 273, 'Y', 6);
INSERT INTO TB_POST
VALUES(SEQ_PNO.NEXTVAL, '니들 버스에서 옆 사람이 어깨 기대서 잠들면 어케함?', 'ㅈㄱㄴ', SYSDATE, 273, 'Y', 10);
INSERT INTO TB_POST
VALUES(SEQ_PNO.NEXTVAL, 'BTS사랑해!!!!!', '미쳤다 너무 사랑해 진짜 사랑해!!!!', SYSDATE, 273, 'Y', 5);
INSERT INTO TB_POST
VALUES(SEQ_PNO.NEXTVAL, '낭만을 아는 고양이 있나??', '밤 바다의 해변을 나와 같이 걸어줄 아기고양이있는가?', SYSDATE, 273, 'Y', 7);
COMMENT ON COLUMN TB_POST.POST_STATUS IS 'CHECK(Y,N), Y:게시중, N:게시내림';

-------------------------------------- TB_NOTICE --------------------------------------
CREATE TABLE TB_NOTICE (
    NOTICE_NO NUMBER,
    NOTICE_TITLE VARCHAR2(255),
    NOTICE_CONTENT VARCHAR2(3000),
    NOTICE_DATE DATE DEFAULT SYSDATE,
    NOTICE_COUNT NUMBER DEFAULT 0,
    NOTICE_STATUS VARCHAR2(1) DEFAULT 'Y',
    ORIGIN_NAME VARCHAR2(200),
    CHANGE_NAME VARCHAR2(200)
);
INSERT INTO TB_NOTICE
values (SEQ_NNO.NEXTVAL,'CATCHMIND 캐치마인드 사용자 가이드',
'◆ CATCHMIND 소개
CATCHMIND에 오신 것을 환영합니다!
CATCHMIND는 무한한 가능성을 토대로 만들어진 곳입니다.
대화가 시작되면 그 관계는 무엇이든 될 수 있는 가능성이 생기죠.
CATCHMIND는 쉽고 재미있게 이용하실 수 있어요.
무한한 가능성이 가득한 세계가 회원님을 기다리고 있어요.

◆ 최소 이용 연령은 어떻게 되나요?
CATCHMIND를 이용할 수 있는 최소 연령은 만 18세입니다.
CATCHMIND의 최소 이용 연령 기준을 충족하지 못해 서비스 이용이 불가한 경우에는,
만 18세가 되기 전까지 CATCHMIND에 가입하실 수 없습니다.

◆ CATCHMIND는 무료인가요?
CATCHMIND는 현재 웹사이트에서 무료로 이용할 수 있습니다.
MBTI 검사부터, 각종 축제 정보 및 채팅 서비스를 무료로 즐기실 수 있습니다.

◆ 지원되는 플랫폼 및 기기
현재 Tinder는 iOS 13.0 및 이후 버전, 안드로이드 7.0 및 이후 버전,
그리고 크롬, 파이어폭스, 사파리, 마이크로소프트 엣지 등
모든 주요 웹 브라우저의 최신 버전에서 이용할 수 있습니다.',to_date('2022-07-16 00:42:36','YYYY-MM-DD HH24:MI:SS'),30,'Y','notice2.jpg','resources/noticeUploadFiles/2022071718060370382.jpg');
INSERT INTO TB_NOTICE 
values (SEQ_NNO.NEXTVAL,'CATCHMIND 회원 서비스 및 신고 기능  이용 안내 ','                                    	                                    	
◆ CATCHMIND 회원 서비스 이용 안내
CATCHMIND 에서는 회원님이 안전한 서비스를 이용하실 수 있도록
자사 운영 지원팀을 보유하고 있습니다.
이용에 불편한 점이 있으시다면 회원님은 몇 가지 방법으로 운영지원팀에 접근할 수 있습니다.
- 사이트 내 1:1 문의 : 계정 로그인 후 [공지사항] - [1:1문의] 게시판에 문의글 작성이 가능합니다.
- 이메일 문의 : catchmindofficial@gmail.com

◆ 계정을 잊어버렸어요 !
로그인 페이지로 접근하시면 아이디 / 비밀번호 찾기 서비스 이용이 가능합니다.
그 외 문의사항이 있으시다면
웹사이트 내 문의 게시판은 로그인한 회원만 접근이 가능하기 때문에
하단 기재되어있는 이메일으로 연락을 주시거나
고객센터로 연락주시면 간단한 본인 확인 후 도와드리도록 하겠습니다.

◆ 신고 기능 안내
CATCHMIND 는 쾌적한 이용 환경을 조성하기 위하여 적극적으로 노력하고 있습니다.
비방글, 홍보 목적의 회원이나 게시글, 성희롱, 불쾌함을 주는 언행, 노출이 있는 사진, 욕설 등
불편함을 겪으셨거나 채팅 상대를 다시 만나고 싶지 않으시다면
바로 알려주시기 바랍니다.

◆ 기타 사항
전송하지 않은 메시지나 업로드하지 않은 사진 등
회원 님의 계정에서 의심스러운 활동이 발견된 경우에는
저희에게 이메일을 보내 주세요. 회원님을 즉시 도와드릴 수 있도록
문제를 가능한 한 자세히 설명해주시기 바랍니다.',to_date('2022-07-16 01:51:24','YYYY-MM-DD HH24:MI:SS'),62,'Y','notice.jpg','resources/noticeUploadFiles/2022071716130788362.jpg');
INSERT INTO TB_NOTICE 
values (SEQ_NNO.NEXTVAL,'NEW 캐치마인더를 찾습니다 (2022.07.15 ~ 2022.07.30) | 진행중',
'" NEW 캐치마인더를 찾습니다 !"
반가운 캐치마인더 여러분들을 위해이벤트를 진행합니다.

◆ 캐치마인드 NEW 신규 유저 이벤트 안내
- 이벤트 기간 : 2022.07.15 ~ 2022.07.30
- 이벤트 대상 : CATCHMIND 신규 회원 전체
신규 회원 여러분 캐치마인드를 이용하시고
솔직한 여러분의 후기를 들려주세요.
직접 즐기고 이용한 여러분의 이야기를 기다리고 있어요 :D
남겨주신 리뷰는 캐치마인드에게 큰 도움이 됩니다.
상세 내용는 캐치마인드 관리자에게 문의 바랍니다.',to_date('2022-07-16 16:40:12','YYYY-MM-DD HH24:MI:SS'),142,'Y','2022071719105172172.jpg','resources/noticeUploadFiles/2022071719221260094.jpg');
INSERT INTO TB_NOTICE 
values (SEQ_NNO.NEXTVAL,'캐치마인드랑 차박 떠나자! (2022.07.17 ~ 2022.07.20) | 종료',
'"캐치마인드랑 1박 2일 차박 여행 떠나자 ! "

◆ 여름 밤, 1박 2일 차박 여행 이벤트
- 이벤트 기간 : 2022.07.17 ~ 2022.07.20
- 이벤트 대상 : CATCHMIND 회원 전체
별이 빛나는 밤에 강원도 정선으로
CATCHMIND와 함께 1박 2일 로맨틱 정선 여행 떠나고
후기를 들려주실 3 쌍의 커플을 찾고 있습니다 . ( 총 3팀 )
캐치마인드에서 나의 인연을 찾은 분이라면
누구나 참여대상 !
- 지원 물품 : SUV + 로맨틱 캠핑용품 ( 랜턴, 담요, 조리도구, 테이블, 의자 등 ) 풀 패키지
상세 내용는 캐치마인드 관리자에게 문의 바랍니다.',to_date('2022-07-17 18:59:54','YYYY-MM-DD HH24:MI:SS'),41,'Y','notice3.jpg','resources/noticeUploadFiles/2022071718595478598.jpg');
INSERT INTO TB_NOTICE 
values (SEQ_NNO.NEXTVAL,'리뷰 남기고 스타벅스 기프티콘 받자 ! (2022.07.17 ~ 2022.07.17) | 종료',
'"캐치마인드 리뷰를 부탁해 ! "

◆ 7월 17일 단 하루 캐치마인드 리뷰남기고 상품 받자
- 이벤트 상품 : 스타벅스 기프티콘 1만원 상당 ( 총 30명 )
- 이벤트 기간 : 2022.07.17 ~ 2022.07.17
- 이벤트 대상 : CATCHMIND 회원 전체
오직 단 하루, 캐치마인드를 이용하시고
솔직한 여러분의 후기를 들려주세요.
직접 즐기고 이용한 여러분의 이야기를 기다리고 있어요 :D
남겨주신 리뷰는 캐치마인드에게 큰 도움이 됩니다.
상세 내용는 캐치마인드 관리자에게 문의 바랍니다.',to_date('2022-07-17 19:10:51','YYYY-MM-DD HH24:MI:SS'),11,'Y','notice4.jpg','resources/noticeUploadFiles/2022071719105172172.jpg');
INSERT INTO TB_NOTICE 
values (SEQ_NNO.NEXTVAL,'미리미리 가을준비 AUTUMN? (2022.07.17 ~ 2022.09.30) | 진행중',
'"동네 친구 사귀기도 이제는 캐치마인드! "
미리미리 가을 준비 하기 AUTUMN?

◆ 인연 찾기 부터 옷장 준비까지 캐치마인드가 도와드립니다.
- 이벤트 기간 : 2022.07.17 ~ 2022.09.30
- 이벤트 상품 : 무신사 이용권 10만원 상당 ( 총 1명 )
- 이벤트 대상 : CATCHMIND 신규 회원
캐치마인드 가입 유저들을 대상으로
가을 옷 장만 이벤트를 진행합니다.
추첨을 통해 당첨된 1인에게는 10만원 상당의 무신사 이용권
직접 즐기고 이용한 여러분의 이야기를 기다리고 있어요 :D
남겨주신 리뷰는 캐치마인드에게 큰 도움이 됩니다.
상세 내용는 캐치마인드 관리자에게 문의 바랍니다.',to_date('2022-07-17 19:18:08','YYYY-MM-DD HH24:MI:SS'),5,'Y','notice5.jpg','resources/noticeUploadFiles/2022071719180847479.jpg');
INSERT INTO TB_NOTICE 
values (SEQ_NNO.NEXTVAL,'캐치마인드 여름 이벤트(2022.07.15 ~ 2022.07.30) | 진행중',
'"[연애의 발견] 게시판에 커플 후기 작성하고 여름 휴가 가자 !"
무더운 7월, 더위를 시원하게 날려 줄 여름 이벤트를 진행합니다.

◆ 캐치마인드 여름 이벤트 안내
- 이벤트 기간 : 2022.07.15 ~ 2022.07.30
- 이벤트 대상 : CATCHMIND 회원 전체
캐치마인드를 통한 만남이 인연이 되어
예쁜 연애 중인 커플을 찾고 있습니다 !
ex) 취향부터 MBTI까지 닮아 신기한 천생연분 우리 커플 이야기,
모태 솔로 탈출 이야기, 올 크리스마스 데이트 계획 무엇이든 좋습니다 !
선남 선녀 여러분의 이야기를 들려주세요.
상세 내용는 캐치마인드 관리자에게 문의 바랍니다.',to_date('2022-07-17 19:19:50','YYYY-MM-DD HH24:MI:SS'),10,'Y','2022071616401265436.jpg','resources/noticeUploadFiles/2022071719195029310.jpg');


COMMENT ON COLUMN TB_NOTICE.NOTICE_STATUS IS 'CHECK(Y,N), Y:게시중, N:게시내림';
-------------------------------------- TB_CATCH --------------------------------------
CREATE TABLE TB_CATCH (
    CATCH_NO NUMBER,
    CATCH_TITLE VARCHAR2(255),
    CATCH_CONTENT VARCHAR2(3000),
    CATCH_DATE DATE DEFAULT SYSDATE,
    CATCH_COUNT NUMBER DEFAULT 0,
    CATCH_STATUS VARCHAR2(255) DEFAULT 'Y',
    CATCH_WRITER NUMBER
);
Insert into TB_CATCH values (0,'관리용게시글','1',to_date('22/07/20','RR/MM/DD'),0,'N',1);
Insert into TB_CATCH values (SEQ_CNO.NEXTVAL,'우리둘, 순천만 데이트🤎','옷촬영말고 온전히 바람쐬기위한 시간:)',to_date('22/07/20','RR/MM/DD'),516,'Y',6);
Insert into TB_CATCH values (SEQ_CNO.NEXTVAL,'방랑싸롱_조치원정수장','햅-삐 :)',to_date('22/07/20','RR/MM/DD'),517,'Y',2);
Insert into TB_CATCH values (SEQ_CNO.NEXTVAL,'무신ㅇ 데이뚜','사랑해😍',to_date('22/07/20','RR/MM/DD'),518,'Y',9);
Insert into TB_CATCH values (SEQ_CNO.NEXTVAL,'경주에서 연꽃🍀','원래 계획에 없었는데 붕붕이 타고 지나가다가 저기 뭐냐구 넘 이쁘다해서 뽀짝이가 찾아줘서 다녀왔다.💚💚💚
.
연꽃이 만개하지 않아서 (지는건가..?)아쉬웠지만 연꽃이 생각보다 엄청 많아서 기분이가 좋았다.
근데 폭염속에서 뽀짝이가 삼각대 놓고 왔다갔다 너무 고생해서 미안했는데
뽀짝이는 내가 준 커플티에 땀으로 옷을 베려서 속상하다고해서 도리어 나한테 미안해했다.🥹
.
사소한거에도 서로를 생각해주고 배려해주는 뽀짝이(남친)❤️쪼꼼이(여친)
우리 너무 이뿌지않나요?🤭
물론,, 누가 꽃인지 사람인지 모르겠는것도 있지요🤣',to_date('22/07/20','RR/MM/DD'),522,'Y',7);
Insert into TB_CATCH values (SEQ_CNO.NEXTVAL,'비오는날 데이트☔️💜💛💙💚','우리 쟈기랑 비오는날 고기 냠냠~~~',to_date('22/07/20','RR/MM/DD'),516,'Y',4);
Insert into TB_CATCH values (SEQ_CNO.NEXTVAL,'경산 반곡지 데이트!!','커플룩 너무 귀엽죠?!!?!?!?!?!?!?',to_date('22/07/20','RR/MM/DD'),516,'Y',5);
Insert into TB_CATCH values (SEQ_CNO.NEXTVAL,'마사지샵 데이트~~~ 우두둑!','6월말에 다녀온 마사지샵
야근과 바쁜 업무로 인해 뭉친 근육들 풀어주러
마사지샵에 다녀왔었어요🤣
이번에는 처음으로 아로마 마사지를 받았는데요
일회용팬티 하나 주시고 다 벗고(?) 받는거라
약간 부끄러웠었던(˃̶᷄‧̫ ˂̶᷅๑ )
그래서 만난지 얼마 안된 커플이 가기엔 민망할것같다는
생각이 들었어요ㅋ.ㅋ
그래도 건식보단 부드럽게 몸이 풀리는 느낌이라 넘 좋았어요💓',to_date('22/07/20','RR/MM/DD'),516,'Y',8);
Insert into TB_CATCH values (SEQ_CNO.NEXTVAL,'단짝같은 남친이랑 경주 데이트😍🥰💖💖💖💖','500일 기념 경주 데이트 너무 좋았어요!!',to_date('22/07/20','RR/MM/DD'),516,'Y',3);
Insert into TB_CATCH values (SEQ_CNO.NEXTVAL,'스타필드 안성 가배도 카페','주호랑 스타필드에서 전망 좋은 카페 발견했는데 녹차 슬러시도 맛있고 녹차 티라미수도 맛있공ㅎㅎ

녹차 덕후로써 아주 만족💚',to_date('22/07/20','RR/MM/DD'),516,'Y',11);

COMMENT ON COLUMN TB_CATCH.CATCH_STATUS IS 'CHECK(Y,N), Y:게시중, N:게시내림';

-------------------------------------- TB_LIKE --------------------------------------
CREATE TABLE TB_LIKE (
    CATCH_NO NUMBER,
    LIKE_USER NUMBER
);

-------------------------------------- TB_REPORT --------------------------------------
CREATE TABLE TB_REPORT (
  REP_CONTENT VARCHAR2(1000),
  CATCH_NO NUMBER DEFAULT 0,
  POST_NO NUMBER DEFAULT 0,
  REPLY_NO NUMBER DEFAULT 0
  );

-------------------------------------- TB_REPLY --------------------------------------
CREATE TABLE TB_REPLY (
    REPLY_NO NUMBER,
    REPLY_CONTENT VARCHAR2(3000) ,
    REPLY_DATE DATE  DEFAULT SYSDATE,
    STATUS VARCHAR(255) DEFAULT 'Y',
    REPLY_WRITER NUMBER,
    REPLY_POST NUMBER
);
COMMENT ON COLUMN TB_REPLY.STATUS IS 'CHECK(Y,N), Y:게시중, N:삭제';

-------------------------------------- TB_ATTACHMENT --------------------------------------
CREATE TABLE TB_ATTACHMENT (
    ATT_NO NUMBER,
    ATT_ORIGIN VARCHAR2(3000), -- 변경 사이즈 수정 인범
    ATT_CHANGE VARCHAR2(3000) ,  -- 변경 사이즈 수정 인범
    ATT_NOTICE NUMBER,
    ATT_POST NUMBER,
    ATT_CATCH NUMBER
);

Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'cafe.PNG','resources/images/upfiles/CatchMind_2022071718172891874.PNG',null,1,null);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'meat.jpg','resources/images/upfiles/CatchMind_2022071718193947173.jpg',null,2,null);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'BTS.jpg','resources/images/upfiles/CatchMind_2022071718215441232.jpg',null,7,null);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'beach.jpg','resources/images/upfiles/CatchMind_2022071718321297515.jpg',null,8,null);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'3.jpg','resources/images/upfiles/CatchMind_2022072019093698551.jpg',null,null,1);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'12.jpg','resources/images/upfiles/CatchMind_2022072019121565185.jpg',null,null,2);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'294252466_736716814078837_7198052517071303960_n.webp','resources/images/upfiles/CatchMind_2022072019285211797.webp',null,null,5);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'294488142_459126002666848_5638406387912632407_n.webp','resources/images/upfiles/CatchMind_2022072019285221384.webp',null,null,5);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'1.jpg','resources/images/upfiles/CatchMind_2022072019093696084.jpg',null,null,1);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'2.jpg','resources/images/upfiles/CatchMind_2022072019093650179.jpg',null,null,1);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'4.jpg','resources/images/upfiles/CatchMind_2022072019093617845.jpg',null,null,1);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'5.jpg','resources/images/upfiles/CatchMind_2022072019093666661.jpg',null,null,1);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'6.jpg','resources/images/upfiles/CatchMind_2022072019093640753.jpg',null,null,1);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'7.jpg','resources/images/upfiles/CatchMind_2022072019093698712.jpg',null,null,1);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'8.jpg','resources/images/upfiles/CatchMind_2022072019093659746.jpg',null,null,1);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'9.jpg','resources/images/upfiles/CatchMind_2022072019093682973.jpg',null,null,1);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'10.jpg','resources/images/upfiles/CatchMind_2022072019093636428.jpg',null,null,1);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'11.jpg','resources/images/upfiles/CatchMind_2022072019121568105.jpg',null,null,2);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'13.jpg','resources/images/upfiles/CatchMind_2022072019121590212.jpg',null,null,2);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'14.jpg','resources/images/upfiles/CatchMind_2022072019121594151.jpg',null,null,2);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'15.jpg','resources/images/upfiles/CatchMind_2022072019135963533.jpg',null,null,3);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'16.jpg','resources/images/upfiles/CatchMind_2022072019135951425.jpg',null,null,3);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'17.jpg','resources/images/upfiles/CatchMind_2022072019261281330.jpg',null,null,4);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'18.jpg','resources/images/upfiles/CatchMind_2022072019261222703.jpg',null,null,4);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'294180478_197026946002096_1943425961441863543_n.webp','resources/images/upfiles/CatchMind_2022072019285234308.webp',null,null,5);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'294452037_146004568050210_5766174008953811879_n.webp','resources/images/upfiles/CatchMind_2022072019285287190.webp',null,null,5);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'294524916_564328751842422_2520665566175749613_n.webp','resources/images/upfiles/CatchMind_2022072019285224928.webp',null,null,5);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'294364339_414526137365739_3980408873867043340_n.jpg','resources/images/upfiles/CatchMind_2022072019301749987.jpg',null,null,6);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'293950316_793554348682530_1604073222654411457_n.jpg','resources/images/upfiles/CatchMind_2022072019310828129.jpg',null,null,7);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'294015010_5238190192924213_8725561956759384273_n.jpg','resources/images/upfiles/CatchMind_2022072019310894869.jpg',null,null,7);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'294265333_609414273835718_6036005814250973419_n.webp','resources/images/upfiles/CatchMind_2022072019323210461.webp',null,null,8);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'294627661_2102520916588619_5112924913737915729_n.webp','resources/images/upfiles/CatchMind_2022072019323258301.webp',null,null,8);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'293497175_758794771931643_4961914248879715898_n.webp','resources/images/upfiles/CatchMind_2022072019335024603.webp',null,null,9);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'293824223_751696422700168_795003076795790423_n.webp','resources/images/upfiles/CatchMind_2022072019335071362.webp',null,null,9);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'293448043_577188320672030_3464743250484066449_n.webp','resources/images/upfiles/CatchMind_2022072019335021200.webp',null,null,9);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'293585777_575292977591771_4700145839019043399_n.webp','resources/images/upfiles/CatchMind_2022072019335021291.webp',null,null,9);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'293614959_459528195597670_2388247776958163434_n.webp','resources/images/upfiles/CatchMind_2022072019335066346.webp',null,null,9);
Insert into TB_ATTACHMENT values (SEQ_ANO.NEXTVAL,'293634903_791587071859609_8467189034561628702_n.webp','resources/images/upfiles/CatchMind_2022072019335057918.webp',null,null,9);

-------------------------------------- TB_FAQ --------------------------------------
CREATE TABLE TB_FAQ (
    FAQ_NO NUMBER,
    FAQ_TITLE VARCHAR2(255) ,
    FAQ_CONTENT VARCHAR2(900) -- 사이즈 변경(유진)
);
INSERT INTO TB_FAQ(FAQ_NO, FAQ_TITLE, FAQ_CONTENT)
VALUES(SEQ_FNO.NEXTVAL, '캐치마인드는 어떤 사이트인가요?', 'MBTI를 기반으로 한 매칭 사이트입니다.');
INSERT INTO TB_FAQ(FAQ_NO, FAQ_TITLE, FAQ_CONTENT)
VALUES(SEQ_FNO.NEXTVAL, '어떤 방식으로 매칭이 진행되나요?', 'MBTI 궁합, 키, 거리 등 원하는 조건에 맞게 매칭이 진행됩니다.');
INSERT INTO TB_FAQ(FAQ_NO, FAQ_TITLE, FAQ_CONTENT)
VALUES(SEQ_FNO.NEXTVAL, 'MBTI가 뭔가요?', '제2차 세계대전 당시 심리학자 카를 융의 성격 유형 이론을 근거로 개발된 성격 유형 지표입니다.');
INSERT INTO TB_FAQ(FAQ_NO, FAQ_TITLE, FAQ_CONTENT)
VALUES(SEQ_FNO.NEXTVAL, '선택한 조건과 다른 유저가 매칭됩니다.', '고객님이 선택한 조건 우선으로 매칭되지만 대상자가 적을 경우, 설정 조건과 다소 차이가 나는 유저가 매칭될 수 있습니다. 이점 양해부탁드립니다.');
INSERT INTO TB_FAQ(FAQ_NO, FAQ_TITLE, FAQ_CONTENT)
VALUES(SEQ_FNO.NEXTVAL, '프로필 정보를 변경할 수 있나요?', '로그인>마이 페이지에서 수정 가능합니다.');
INSERT INTO TB_FAQ(FAQ_NO, FAQ_TITLE, FAQ_CONTENT)
VALUES(SEQ_FNO.NEXTVAL, '아이디, 비밀번호를 잊어버렸어요?', '아이디/비밀번호 찾기 페이지에서 회원 정보를 찾을 수 있습니다.');
INSERT INTO TB_FAQ(FAQ_NO, FAQ_TITLE, FAQ_CONTENT)
VALUES(SEQ_FNO.NEXTVAL, '대화 중 불쾌한 언행을 한 상대를 차단할 수 있나요?', '네, 대화 중 불쾌한 언행을 한 사용자는 신고 및 차단 가능합니다. ');
INSERT INTO TB_FAQ(FAQ_NO, FAQ_TITLE, FAQ_CONTENT)
VALUES(SEQ_FNO.NEXTVAL, '차단 당하면 대화를 할 수 없나요?', '네, 상대방에게 차단 당하면 더이상 대화를 진행할 수 없습니다.');
INSERT INTO TB_FAQ(FAQ_NO, FAQ_TITLE, FAQ_CONTENT)
VALUES(SEQ_FNO.NEXTVAL, '회원 탈퇴는 어떻게 하나요?', '마이 페이지에서 탈퇴하기 버튼을 클릭하여 탈퇴 가능합니다.');
-------------------------------------- MBTI --------------------------------------
CREATE TABLE MBTI (
    MBTI VARCHAR2(255),
    MBTI_WITH VARCHAR2(255),
    SCORE NUMBER
);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ENTJ','ISFP',3);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ENTJ','INFP',2);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ENTJ','ESFP',1);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ENTP','ISFJ',3);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ENTP','ISTJ',2);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ENTP','ENTP',1);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('INTJ','ESFP',3);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('INTJ','ESTP',2);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('INTJ','ISFP',1);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('INTP','ESFJ',3);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('INTP','ENFJ',2);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('INTP','ISFJ',1);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ESTJ','INFP',3);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ESTJ','ISFP',2);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ESTJ','INTP',1);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ESFJ','INTP',3);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ESFJ','ISTP',2);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ESFJ','ENTP',1);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ISTJ','ENFP',3);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ISTJ','ENTP',2);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ISTJ','ISFP',1);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ISFJ','ENTP',3);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ISFJ','ENFP',2);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ISFJ','INTP',1);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ENFJ','ISTP',3);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ENFJ','INTP',2);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ENFJ','ESTP',1);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ENFP','ISTJ',3);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ENFP','ISFJ',2);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ENFP','ESFJ',1);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('INFJ','ESTP',3);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('INFJ','ESFP',2);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('INFJ','ISTP',1);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('INFP','ESTJ',3);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('INFP','ENTJ',2);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('INFP','INTJ',1);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ESTP','INFJ',3);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ESTP','INTJ',2);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ESTP','ENFJ',1);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ESFP','INTJ',3);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ESFP','INFJ',2);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ESFP','ENTJ',1);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ISTP','ENFJ',3);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ISTP','ESFJ',2);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ISTP','INFJ',1);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ISFP','ENTJ',3);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ISFP','ESTJ',2);
Insert into CATCHMIND.MBTI (MBTI,MBTI_WITH,SCORE) values ('ISFP','INTJ',1);
-------------------------------------- CHAT_REPORT --------------------------------------
-------------------------------------- CHATCLAIM --------------------------------------
  CREATE TABLE CHATCLAIM (
   	USER_NO NUMBER, 
	CLAIM_FROM NUMBER
   );

Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (2,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (3,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (4,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (5,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (6,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (7,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (8,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (9,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (10,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (11,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (12,13);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (13,12);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (14,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (15,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (16,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (17,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (18,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (19,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (20,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (21,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (22,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (23,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (24,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (25,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (26,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (27,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (28,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (29,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (30,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (31,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (32,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (33,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (34,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (35,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (36,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (37,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (38,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (39,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (40,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (41,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (42,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (43,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (44,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (45,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (46,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (47,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (48,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (49,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (50,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (51,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (52,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (53,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (54,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (55,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (56,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (57,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (58,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (59,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (60,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (61,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (62,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (63,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (64,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (65,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (66,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (67,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (68,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (69,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (70,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (71,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (72,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (73,0);
Insert into CHATCLAIM (USER_NO,CLAIM_FROM) values (74,0);
-------------------------------------- CHATROOMS --------------------------------------
  CREATE TABLE CHATROOMS (
   	ROOM_NO NUMBER, 
	USER_NO1 NUMBER, 
	USER_NO2 NUMBER, 
	ROOMTIME1 DATE DEFAULT SYSDATE, 
	ROOMTIME2 DATE DEFAULT SYSDATE
   );

Insert into CATCHMIND.CHATROOMS (ROOM_NO,USER_NO1,USER_NO2,ROOMTIME1,ROOMTIME2) values (SEQ_CRNO.NEXTVAL,2,3,to_date('2022-07-20 18:04:31','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-20 18:04:21','YYYY-MM-DD HH24:MI:SS'));
Insert into CATCHMIND.CHATROOMS (ROOM_NO,USER_NO1,USER_NO2,ROOMTIME1,ROOMTIME2) values (SEQ_CRNO.NEXTVAL,4,7,to_date('2022-07-20 16:30:24','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-20 16:30:24','YYYY-MM-DD HH24:MI:SS'));
Insert into CATCHMIND.CHATROOMS (ROOM_NO,USER_NO1,USER_NO2,ROOMTIME1,ROOMTIME2) values (SEQ_CRNO.NEXTVAL,2,4,to_date('2022-07-20 17:22:24','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-20 17:22:24','YYYY-MM-DD HH24:MI:SS'));
Insert into CATCHMIND.CHATROOMS (ROOM_NO,USER_NO1,USER_NO2,ROOMTIME1,ROOMTIME2) values (SEQ_CRNO.NEXTVAL,12,73,to_date('2022-07-21 10:11:36','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 10:11:46','YYYY-MM-DD HH24:MI:SS'));
Insert into CATCHMIND.CHATROOMS (ROOM_NO,USER_NO1,USER_NO2,ROOMTIME1,ROOMTIME2) values (SEQ_CRNO.NEXTVAL,12,13,to_date('2022-07-21 10:17:41','YYYY-MM-DD HH24:MI:SS'),to_date('2022-07-21 10:17:41','YYYY-MM-DD HH24:MI:SS'));

COMMIT;