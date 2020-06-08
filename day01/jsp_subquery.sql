select * from member01;

create table board01(
    bno number(5) CONSTRAINT board01_bno_pk primary key,
    id varchar(20) not null, --foreign key 관계지만, 생략함
    title VARCHAR2(20),
    content varchar2(20)   
);

create sequence board01_bno_seq;

insert into board01 values(board01_bno_seq.nextval, 'test', 'test'|| board01_bno_seq.currval,'test' || board01_bno_seq.currval);
insert into board01 values(board01_bno_seq.nextval, 'test', 'test'|| board01_bno_seq.currval,'test' || board01_bno_seq.currval);
insert into board01 values(board01_bno_seq.nextval, 'test', 'test'|| board01_bno_seq.currval,'test' || board01_bno_seq.currval);

commit;


select  rn,
         bno,
         id,                 
         title,
         content
from (select 
                rownum rn,
                bno,
                id, 
                title,
                content
        from (select
                        *
                from board01 
                order by bno desc))
where rn >=10 and rn<=20;

update board01 set  id = 'aaa123';
commit;

select  
        m.id,
        m.pw,
        m.name,
        m.email,
        m.address,
        b.bno,
        b.title,
        b.content        
from member01 m
join (select  rn,
                 bno,
                 id,                 
                 title,
                 content
      from (select 
                        rownum rn,
                        bno,
                        id, 
                        title,
                        content
              from (select
                                *
                        from board01 
                        order by bno desc))
     where rn >=10 and rn<=20) b
on m.id = b.id
where m.id = 'aaa123';