 create table members(
        id varchar2(30) not null,
        pw varchar2(30) not null,
        name varchar2(30),
        phone1 varchar2(30),
        phone2 varchar2(30),
        phone3 varchar2(30),
        gender varchar2(1)
 );
 
 alter table members add constraint members_pk primary key (id);

