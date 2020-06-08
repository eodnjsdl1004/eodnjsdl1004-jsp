insert into deadline values(SEQ_deadline_rno.nextval,
               ( select h.lend_no from history h
                left outer join lend l
                on h.lend_no = l.lend_no
                where id = (select id from members where id = 'ggg123' ) and
                bno = (select bno from Book where name = 'È²Á¦Æë±Ï' )) ,
                (select bno from Book where name = 'È²Á¦Æë±Ï' ),'20/05/25',null);

commit;
delete from deadline where rno = 73;
update deadline set arrears = 3500 where bno  = (select bno from Book where name = '°³¹Ì' )and lend_no in(select lend_no from history where id='ggg123') ;

select bno from Book where name = '°íÂû' ;

select lend_no from history where id='kkk123';


insert into lend values(SEQ_lend_lend_no.nextval, (select bno from Book where name = 'È²Á¦Æë±Ï' ) ,'20/05/14',1);


insert into history values(SEQ_history_hno.nextval,
(select l.lend_no 
from lend l
left outer join history h
on h.lend_no = l.lend_no 
where bno  in (select bno from Book where name = 'È²Á¦Æë±Ï' )),(select id from lend where));



select l.lend_no 
from lend l 
left outer join history h
on h.lend_no = l.lend_no where bno  = (select bno from Book where name = 'È²Á¦Æë±Ï' ) and l.id='ggg123'); -- and h.id =  'ggg123';