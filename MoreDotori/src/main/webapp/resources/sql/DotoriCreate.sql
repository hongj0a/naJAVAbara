
--code(코드)
create table CODE(
    C_code CHAR(5),
    C_name VARCHAR2(30)
);
alter table CODE add constraint CODE_PK primary key(C_code);

--member(회원)
create table member(
    M_id VARCHAR2(30),
    M_name VARCHAR2(16),
    M_nickname VARCHAR2(16),
    M_password VARCHAR2(16),
    M_phone VARCHAR2(16),
    M_birth DATE,
    M_gender CHAR(1),
    M_profile VARCHAR2(300),
    M_idate DATE,
    M_ldate DATE,
    C_member CHAR(5),
    C_mstate CHAR(5),
    M_month NUMBER,
    M_count NUMBER,
    M_accrue NUMBER,
    M_cdate DATE,
    M_reason VARCHAR2(300)
);
alter table member add constraint MEMBER_PK primary key(M_id);
alter table member add constraint code_member1 foreign key(c_member) references code(c_code);
alter table member add constraint code_member2 foreign key(c_mstate) references code(c_code);

--expert(전문가)
create table EXPERT(
    M_id VARCHAR2(30),
    E_job VARCHAR2(30),
    E_position VARCHAR2(20),
    E_career NUMBER,
    E_address VARCHAR2(50),
    E_introduce VARCHAR2(4000),
    E_starpoint NUMBER,
    E_license1 CHAR(12),
    E_license2 CHAR(12),
    E_license3 CHAR(12),
    E_sns1 VARCHAR2(50),
    E_sns2 VARCHAR2(50),
    E_sns3 VARCHAR2(50),
    E_sns4 VARCHAR2(50),
    E_sns5 VARCHAR2(50)
);
alter table expert add constraint EXPERT_PK primary key(M_id);
alter table expert add constraint expert_member foreign key(M_id) references member on delete cascade;


--ASSET(자산목록)
create table ASSET(
    A_seq NUMBER,
    M_id VARCHAR2(30),
    C_asset CHAR(5),
    A_nickname VARCHAR2(30),
    A_money NUMBER,
    A_memo VARCHAR2(50)
);
alter table asset add constraint asset_pk primary key(A_seq);
alter table asset add constraint asset_member foreign key(M_id) references member(M_id) on delete cascade;
alter table asset add constraint addet_code foreign key(C_asset) references code(C_code);

--INOUT(수입지출,가계부)
create table INOUT(
    I_seq NUMBER,
    A_seq NUMBER,
    C_inout CHAR(5),
    C_categori CHAR(5),
    I_date DATE,
    I_memo VARCHAR2(50)
);
alter table inout add constraint inout_pk primary key(I_seq);
alter table inout add constraint inout_asset foreign key(A_seq) references asset(A_seq) on delete cascade;
alter table inout add constraint inout_code1 foreign key(C_inout) references code(C_code);
alter table inout add constraint inout_code2 foreign key(C_categori) references code(C_code);

--TRANSFER(이체및카드값,가계부)
create table TRANSFER(
    T_seq NUMBER,
    A_seq_in NUMBER,
    A_seq_out NUMBER,
    T_date DATE,
    T_memo VARCHAR2(50)
);
alter table transfer add constraint transfer_pk primary key(T_seq);
alter table transfer add constraint transfer_asset1 foreign key(A_seq_in) references asset(A_seq) on delete cascade;
alter table transfer add constraint transfer_asset2 foreign key(A_seq_out) references asset(A_seq) on delete cascade;

--RESERVATION(예약)
create table RESERVATION(
    R_seq NUMBER,
    R_family NUMBER,
    M_expert VARCHAR2(30),
    M_member VARCHAR2(30),
    C_reservation CHAR(5),
    R_cdate DATE,
    R_coment VARCHAR2(300)
);
alter table reservation add constraint reservation_pk primary key(R_seq);
alter table reservation add constraint reservation_member1 foreign key(M_expert) references member(M_id) on delete cascade;
alter table reservation add constraint reservation_member2 foreign key(M_member) references member(M_id) on delete cascade;
alter table reservation add constraint reservation_code foreign key(C_reservation) references code(C_code);

--REVIEW(전문가후기)
create table REVIEW(
    R_seq NUMBER,
    RV_starpoint NUMBER,
    RV_content VARCHAR2(1000),
    RV_date DATE
);
alter table review add constraint review_pk primary key(R_seq);
alter table review add constraint review_reservation foreign key(R_Seq) references reservation(R_seq);

--RMEMO (상담메모)
create table RMEMO(
    R_seq NUMBER,
    RM_date DATE,
    RM_content VARCHAR2(1000)
);
alter table rmemo add constraint rmemo_pk primary key(R_seq);
alter table rmemo add constraint rmemo_reservation foreign key(R_seq) references reservation(R_seq);

--EMEMO(전문가메모)
create table EMEMO(
    EM_date DATE,
    M_id VARCHAR2(30),
    EM_content VARCHAR2(1000)
);
alter table ememo add constraint ememo_pk primary key(EM_date, M_id);
alter table ememo add constraint ememo_member foreign key(M_id) references member(M_id) on delete cascade;

--BOARD(게시판 / 공지사항+자유+PR)
create table BOARD(
    B_seq NUMBER,
    C_bcategori CHAR(5),
    M_id VARCHAR2(30),
    B_subject VARCHAR2(100),
    B_content VARCHAR2(4000),
    B_readnum NUMBER,
    B_heartnum NUMBER,
    B_replynum NUMBER,
    B_date DATE,
    C_fcategori CHAR(5)
);
alter table board add constraint board_pk primary key(B_seq, C_bcategori);
alter table board add constraint board_code1 foreign key(C_fcategori) references code(C_code);
alter table board add constraint board_code2 foreign key(C_bcategori) references code(C_code);
alter table board add constraint board_member foreign key(M_id) references member(M_id) on delete cascade;


--REPLY (댓글)
create table REPLY(
    RE_seq NUMBER,
    B_seq NUMBER,
    C_bcategori CHAR(5),
    M_id VARCHAR2(30),
    RE_content VARCHAR2(500),
    RE_date DATE
);
alter table reply add constraint reply_pk primary key(RE_seq, C_bcategori, B_seq);
alter table reply add constraint reply_board foreign key(B_seq, C_bcategori) references board(B_seq, C_bcategori) on delete cascade;
alter table reply add constraint reply_member foreign key(M_id) references member(M_id) on delete cascade;


--REPORT (신고)
create table REPORT(
    RP_seq NUMBER,
    C_sort CHAR(5),
    C_bcategori CHAR(5),
    RE_seq NUMBER,
    B_seq NUMBER
);
alter table report add constraint report_pk primary key(RP_seq, C_sort);
alter table report add constraint report_code1 foreign key(C_sort) references code(C_code);
alter table report add constraint report_reply foreign key(RE_seq, B_seq, C_bcategori) references reply(RE_seq, B_seq, C_bcategori);
alter table report add constraint report_board foreign key(B_seq, C_bcategori) references board(B_seq, C_bcategori);

--REPORTDETAIL (신고상세)
create table REPORTDETAIL(
    RD_seq NUMBER,
    C_sort CHAR(5),
    RP_seq NUMBER,
    M_id VARCHAR2(30),
    RD_date DATE,
    RD_content VARCHAR2(300)
);
alter table reportdetail add constraint reportdetail_pk primary key(RD_seq);
alter table reportdetail add constraint reportdetail_boardreport foreign key(RP_seq, C_sort) references report(RP_seq, C_sort);
alter table reportdetail add constraint reportdetail_member foreign key(M_id) references member(M_id);


--NOTICE(알림)
create table NOTICE(
    N_seq NUMBER,
    M_id VARCHAR2(30),
    C_horsehead CHAR(5),
    N_bseq NUMBER,
    N_subject VARCHAR2(100),
    N_content VARCHAR2(300),
    N_date DATE,
    C_nstate CHAR(5)
);
alter table notice add constraint notice_pk primary key(N_seq);
alter table notice add constraint notice_member foreign key(M_id) references member(M_id) on delete cascade;
alter table notice add constraint notice_code1 foreign key(C_horsehead) references code(C_code);
alter table notice add constraint notice_code2 foreign key(C_nstate) references code(C_code);


--시퀀스
CREATE SEQUENCE NOTICE_SEQ START WITH 0 MINVALUE 0 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE ASSET_SEQ START WITH 0 MINVALUE 0 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE INOUT_SEQ START WITH 0 MINVALUE 0 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE TRANSFER_SEQ START WITH 0 MINVALUE 0 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE RESERVATION_SEQ START WITH 0 MINVALUE 0 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE REVIEW_SEQ START WITH 0 MINVALUE 0 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE RMEMO_SEQ START WITH 0 MINVALUE 0 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE BOARD_FREE_SEQ START WITH 0 MINVALUE 0 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE BOARD_PR_SEQ START WITH 0 MINVALUE 0 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE BOARD_NOTI_SEQ START WITH 0 MINVALUE 0 INCREMENT BY 1 NOCACHE;							
CREATE SEQUENCE BOARD_FAQ_SEQ START WITH 0 MINVALUE 0 INCREMENT BY 1 NOCACHE;							
CREATE SEQUENCE BOARD_QNA_SEQ START WITH 0 MINVALUE 0 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE REPLY_SEQ START WITH 0 MINVALUE 0 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE REPORT_SEQ START WITH 0 MINVALUE 0 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE REPORTDETAIL_SEQ START WITH 0 MINVALUE 0 INCREMENT BY 1 NOCACHE;
							
