
-- insert 1 
CREATE SEQUENCE testy_auto_increase START WITH 1 INCREMENT BY 1 MINVALUE 1 MAXVALUE 99999999;
INSERT INTO testy(idx,t_name) VALUES(testy_auto_increase.NEXTVAL,'');

create table testy2(
    idx number(10) primary key,
    t_name varchar2(20),
    t_age number(5),
    t_sex varchar2(10),
    create_date date default sysdate,
    modyfi_date date default NULL
);

select * from testy;
select * from testy2;

-- insert arr 
insert into testy2
    select * from testy;


select * from testy2;