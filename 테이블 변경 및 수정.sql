create table testy(
    idx number(10) primary key,
    name varchar2(20)
);

-- ���̺� �̸����� 
alter table testy
    rename to testy2;

-- �÷� �߰� 
alter table testy2
    add (age number(2) default 1);
 
-- �÷� ���� 
alter table testy2
    modify (age varchar2(20) default 10);

-- �÷� ���    
alter table testy2
    drop column age;
    
-- �÷��� ���� 
alter table testy2
    rename column name to new_name;

-- ���̺� ����     
drop table testy2; 

-- debug
select * from testy2;
