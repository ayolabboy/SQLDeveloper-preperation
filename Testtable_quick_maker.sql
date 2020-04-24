--test table quick maker

create table testy(
    idx number(10) primary key,
    t_name varchar2(20),
    t_age number(5),
    t_sex varchar2(10),
    create_date date default sysdate,
    modyfi_date date default NULL
);

CREATE SEQUENCE testy_auto_increase START WITH 1 INCREMENT BY 1 MINVALUE 1 MAXVALUE 99999999;
INSERT INTO testy(idx,t_name) VALUES(testy_auto_increase.NEXTVAL,'');

select * from testy;

drop table testy;
drop sequence testy_auto_increase;