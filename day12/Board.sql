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




