create table users(
    id varchar2(30) not null,
    pw varchar2(30) not null,
    name varchar2(30) not null,
    email varchar2(30),
    address varchar2(30),
    regdate date default sysdate
);

alter table users add constraint user_id primary key (id);