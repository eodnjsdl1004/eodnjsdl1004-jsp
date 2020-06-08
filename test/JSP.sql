create table users(
    id varchar2(30) not null,
    pw varchar2(30) not null,
    name varchar2(30) not null,
    hp1 varchar2(30),
    hp2 varchar2(30),
    hp3 varchar2(30),
    email_f varchar2(30),
    email_e varchar2(30),
    address_b varchar2(30),
    address_d varchar2(30),
    regdate date default sysdate
);

alter table users add constraint user_id primary key (id);


create table board(
    bno number(10,0) not null,
    writer varchar2(50) not null,
    title varchar2(200) not null,
    content varchar2(2000),
    regdate date default sysdate,
    hit number(10,0) default 0    
);

alter table board add CONSTRAINT board_bno_pk primary key (bno);

create sequence bno_seq increment by 1 start with 1;

insert into board(bno,writer, title, content) values(bno_seq.nextval,'홍길동','안녕하세요','test입니다.' );
insert into board(bno,writer, title, content) values(bno_seq.nextval,'홍길동','안녕하세요','test입니다.' );
insert into board(bno,writer, title, content) values(bno_seq.nextval,'홍길동','안녕하세요','test입니다.' );
insert into board(bno,writer, title, content) values(bno_seq.nextval,'홍길동','안녕하세요','test입니다.' );
insert into board(bno,writer, title, content) values(bno_seq.nextval,'홍길동','안녕하세요','test입니다.' );

