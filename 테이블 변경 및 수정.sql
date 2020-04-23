create table testy(
    idx number(10) primary key,
    name varchar2(20)
);

-- 테이블 이름변경 
alter table testy
    rename to testy2;

-- 컬럼 추가 
alter table testy2
    add (age number(2) default 1);
 
-- 컬럼 변경 
alter table testy2
    modify (age varchar2(20) default 10);

-- 컬럼 드롭    
alter table testy2
    drop column age;
    
-- 컬럼명 변경 
alter table testy2
    rename column name to new_name;

-- 테이블 삭제     
drop table testy2; 

-- debug
select * from testy2;
