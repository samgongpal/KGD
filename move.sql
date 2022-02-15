drop table MOVIE;
drop table MUSER;
drop table THEATER;
drop table THEATER_ROOM;
drop table RESERVATION;
drop table qna;
drop sequence u_no_seq;

CREATE TABLE MOVIE(
    m_no number(5) PRIMARY KEY,
    m_name varchar2(30),
    m_dir varchar2(10),
    m_actor varchar2(100),
    m_genre varchar2(10),
    m_sdate date,
    m_edate date,
    m_grade char(2),
    m_rtime number(10),
    m_view number(10),
    m_info varchar(100),
    u_no number(5) not null
);

CREATE TABLE MUSER(
    u_no number(5) PRIMARY KEY,
    u_id varchar2(10),
    u_pw varchar2(10),
    u_mail varchar2(30),
    u_birth date,
    u_name varchar2(10),
    u_gender char(2),
    u_regdate date,
    u_phone varchar2(15)
);
/*CREATE SEQUENCE u_no_seq START WITH 1 INCREMENT BY 1 NOCACHE; */
INSERT INTO MUSER VALUES(1, 'aaa123', 'aaa123', 'aaa123@aaa.com', '19900101', '김회원', 'M', '20210101', '01011112222');
INSERT INTO MUSER VALUES(2, 'bbb123', 'bbb123', 'bbb123@bbb.com', '19910202', '이회원', 'F', '20210201', '01011113333');
INSERT INTO MUSER VALUES(3, 'ccc123', 'ccc123', 'ccc123@ccc.com', '19920303', '정회원', 'M', '20210301', '01011114444');
INSERT INTO MUSER VALUES(4, 'ddd123', 'ddd123', 'ddd123@ddd.com', '19930404', '현회원', 'F', '20210401', '01011115555');
INSERT INTO MUSER VALUES(5, 'eee123', 'eee123', 'eee123@eee.com', '19940505', '오회원', 'M', '20210501', '01011116666');
INSERT INTO MUSER VALUES(6, 'fff123', 'fff123', 'fff123@fff.com', '19950606', '연회원', 'F', '20210601', '01011117777');
INSERT INTO MUSER VALUES(7, 'ggg123', 'ggg123', 'ggg123@ggg.com', '19960707', '훈회원', 'M', '20210701', '01011118888');
INSERT INTO MUSER VALUES(8, 'hhh123', 'hhh123', 'hhh123@hhh.com', '19970808', '장회원', 'F', '20210801', '01011119999');
INSERT INTO MUSER VALUES(9, 'iii123', 'iii123', 'iii123@iii.com', '19980909', '구회원', 'M', '20210901', '01022221111');
INSERT INTO MUSER VALUES(10, 'jjj123', 'jjj123', 'jjj123@jjj.com', '19991010', '장회원', 'F', '20211001', '01022223333');

SELECT * FROM MUSER;

COMMIT;

CREATE TABLE THEATER(
    t_no number(5) PRIMARY KEY,
    t_name varchar2(10),
    t_address varchar2(10)
);

INSERT INTO THEATER VALUES(1, '삼공팔', '중앙동');
INSERT INTO THEATER VALUES(2, '삼공팔', '초지동');
INSERT INTO THEATER VALUES(3, '삼공팔', '사동');

SELECT * FROM THEATER;

COMMIT;

CREATE TABLE THEATER_ROOM(
    tr_no number(5) PRIMARY KEY,
    tr_row number(10),
    tr_column number(10)
);

INSERT INTO THEATER_ROOM VALUES(10, 5, 5);/* 십의 자리 : 1 (중앙동) 일장의 자리 : 1~9(상영관번호)*/
INSERT INTO THEATER_ROOM VALUES(11, 6, 6);
INSERT INTO THEATER_ROOM VALUES(12, 7, 7);
INSERT INTO THEATER_ROOM VALUES(20, 5, 5);/* 십의 자리 : 2 (초지동) 일장의 자리 : 1~9(상영관번호)*/
INSERT INTO THEATER_ROOM VALUES(21, 6, 6);
INSERT INTO THEATER_ROOM VALUES(22, 7, 7);
INSERT INTO THEATER_ROOM VALUES(30, 5, 5);/* 십의 자리 : 3 (초지동) 일장의 자리 : 1~9(상영관번호)*/
INSERT INTO THEATER_ROOM VALUES(31, 6, 6);
INSERT INTO THEATER_ROOM VALUES(33, 7, 7);

SELECT * FROM THEATER_ROOM;

COMMIT;

CREATE TABLE RESERVATION(
    r_no number(10) PRIMARY KEY,
    r_count number(10),
    r_date date,
    u_no number(5) not null
);


/*

ALTER TABLE RESERVATION ADD CONSTRAINT FK_u_id

    FOREIGN KEY(u_id) REFERENCES MUSER(u_id);

ALTER TABLE RESERVATION ADD CONSTRAINT FK_t_no

    FOREIGN KEY(t_no) REFERENCES THEATER(t_no);

ALTER TABLE RESERVATION ADD CONSTRAINT FK_m_no

    FOREIGN KEY(m_no) REFERENCES MOVIE(m_no);

*/  
CREATE TABLE qna(
    q_no number(10) PRIMARY KEY,
    q_title varchar2(20),
    q_con varchar2(3000),
    q_hit number(10),
    q_date date
);

commit;